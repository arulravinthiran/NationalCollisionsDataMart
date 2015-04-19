USE [DW_DATA]
GO

/****** Object:  StoredProcedure [dbo].[msp_data_fact]    Script Date: 12/09/2014 23:45:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[msp_data_fact] AS
 BEGIN
 
 --Identify the records with repeating combinations of date,passenger,collision,vehicle IDs and log them in the logging table
 INSERT INTO DW_DATA.dbo.Tbl_data_logging (date_xf,log_category,table_name,record_identifier,column_name,
 given_value,changed_value)
 SELECT GETDATE(),'Error recording','DW_STAGING.dbo.Tbl_staging_fact',tSFct1.fact_id, 'fact_id','','NA. There is another record 
with the given passenger, vehicle, collision and date ids but different facts/measures'
 FROM DW_STAGING.dbo.Tbl_staging_fact tSFct1 INNER JOIN DW_STAGING.dbo.Tbl_staging_fact tSFct2 --self join identifies the repeating rows
 ON (tSFct1.fact_date_id = tSFct2.fact_date_id AND 
      tSFct1.fact_collision_id = tSFct2.fact_collision_id AND
       tSFct1.fact_passenger_id = tSFct2.fact_passenger_id AND
        tSFct1.fact_vehicle_id = tSFct2.fact_vehicle_id)
 WHERE tSFct1.fact_id <> tSFct2.fact_id
 
/* Insert cleaned records into the fact table with only unique records.
Note that when there is a violation of primary key constraint on inserting data from the fact table of the staging layer to the fact
table in the data layer, only the records that have the minimum fact_id of the duplicate records are inserted along with the unique records */
 
--INSERT clause
INSERT INTO DW_DATA.dbo.Tbl_data_fact(date_xf, fact_date_id, fact_passenger_id,fact_collision_id, fact_vehicle_id, fact_collision_hour, 
fact_collision_severity,fact_collision_no_of_vehicles, fact_medical_treatment_flag,fact_safety_device_flag)
--SELECT clause
 SELECT  GETDATE(),fact_date_id, fact_passenger_id, fact_collision_id, fact_vehicle_id, 
 --clean collision hour
 CASE fact_collision_hour
  WHEN '00' THEN 'Midnight to 0:59'
  WHEN '01' THEN '1:00 to 1:59'
  WHEN '02' THEN '2:00 to 2:59'
  WHEN '03' THEN '3:00 to 3:59'
  WHEN '04' THEN '4:00 to 4:59'
  WHEN '05' THEN '5:00 to 5:59'
  WHEN '06' THEN '6:00 to 6:59'
  WHEN '07' THEN '7:00 to 7:59'
  WHEN '08' THEN '8:00 to 8:59'
  WHEN '09' THEN '9:00 to 9:59'
  WHEN '10' THEN '10:00 to 10:59'
  WHEN '11' THEN '11:00 to 11:59'
  WHEN '12' THEN '12:00 to 12:59'
  WHEN '13' THEN '13:00 to 13:59'
  WHEN '14' THEN '14:00 to 14:59'
  WHEN '15' THEN '15:00 to 15:59'
  WHEN '16' THEN '16:00 to 16:59'
  WHEN '17' THEN '17:00 to 17:59'
  WHEN '18' THEN '18:00 to 18:59'
  WHEN '19' THEN '19:00 to 19:59'
  WHEN '20' THEN '20:00 to 20:59'
  WHEN '21' THEN '21:00 to 21:59'
  WHEN '22' THEN '22:00 to 22:59'
  WHEN '23' THEN '23:00 to 23:59'
  WHEN 'UU' THEN 'Unknown'
  WHEN 'XX' THEN 'Data refused by the Jurisdiction!'
  END AS fact_collision_hour, 
  --clean collision severity
  CASE fact_collision_severity
   WHEN '1' THEN 'At least one fatality'
   WHEN '2' THEN 'Non-fatal injury'
   WHEN 'U' THEN 'Unknown'
   WHEN 'XX'THEN 'Data refused by the Jurisdiction!'
   END AS fact_collision_severity, 
   --clean collision # of vehicles
   CASE fact_collision_no_of_vehicles
    WHEN 'UU' THEN 'Unknown'
    WHEN 'XX' THEN 'Data refused by the Jurisdiction!'
    WHEN '99' THEN '99 or more vehicles involved'
    ELSE fact_collision_no_of_vehicles
    END AS fact_collision_no_of_vehicles, 
    --clean passenger injury severity
    CASE fact_medical_treatment_flag
     WHEN '2' THEN 'Y'
     WHEN '1' THEN 'N'
     WHEN '3' THEN 'N'
     WHEN 'N' THEN 'Not Applicable'
     WHEN 'U' THEN 'Unknown'
     WHEN 'X' THEN 'Data refused by the Jurisdiction!'
     END AS  fact_medical_treatment_flag, 
     --clean passenger safety device
     CASE fact_safety_device_flag
      WHEN '01' THEN 'N'
      WHEN '13' THEN 'N'
      WHEN '02' THEN 'Y'
      WHEN '09' THEN 'Y'
      WHEN '10' THEN 'Y'
      WHEN '11' THEN 'Y'
      WHEN '12' THEN 'Y'
      WHEN 'QQ' THEN 'Other options'
      WHEN 'NN' THEN 'Not Applicable'
      WHEN 'UU' THEN 'Unknown'
      WHEN 'XX' THEN 'Data refused by the Jurisdiction!'
      END AS fact_safety_device_flag

FROM DW_STAGING.dbo.Tbl_staging_fact  
--WHERE clause filters the records with unique values of fact_date_id,fact_collision_id,fact_passenger_id and fact_vehicle_id          
WHERE fact_id IN
(SELECT MAX(fact_id)
 FROM DW_STAGING.dbo.Tbl_staging_fact 
 GROUP BY fact_date_id,fact_collision_id,fact_passenger_id,fact_vehicle_id)
 
--Record the substituted values in the log table
INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 0', 'fact_collision_hour',
 '00','Midnight to 0:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 1', 'fact_collision_hour',
 '01','1:00  to 1:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 2', 'fact_collision_hour',
 '02','2:00 to 0:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 3', 'fact_collision_hour',
 '03','3:00 to 3:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 4', 'fact_collision_hour',
 '04','04:00 to 04:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 5', 'fact_collision_hour',
 '05','05:00 to 05:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 6', 'fact_collision_hour',
 '06','06:00 to 06:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 7', 'fact_collision_hour',
 '07','07:00 to 07:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 8', 'fact_collision_hour',
 '08','08:00 to 08:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 9', 'fact_collision_hour',
 '09','09:00 to 09:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 10', 'fact_collision_hour',
 '10','10:00 to 10:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 11', 'fact_collision_hour',
 '11','11:00 to 11:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 12', 'fact_collision_hour',
 '12','12:00 to 12:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 13', 'fact_collision_hour',
 '13','13:00 to 13:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 14', 'fact_collision_hour',
 '14','14:00 to 14:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 15', 'fact_collision_hour',
 '15','11:00 to 11:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 16', 'fact_collision_hour',
 '16','16:00 to 16:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 17', 'fact_collision_hour',
 '17','17:00 to 17:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 18', 'fact_collision_hour',
 '18','18:00 to 18:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 19', 'fact_collision_hour',
 '19','19:00 to 19:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 20', 'fact_collision_hour',
 '20','20:00 to 20:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 21', 'fact_collision_hour',
 '21','21:00 to 21:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 22', 'fact_collision_hour',
 '22','22:00 to 22:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour 23', 'fact_collision_hour',
 '23','23:00 to 23:59') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour UU', 'fact_collision_hour',
 'UU','Unknown') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision hour XX', 'fact_collision_hour',
 'XX','Data refused by the Jurisdiction!') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision severity 1', 'fact_collision_severity',
 '1','At least one fatality') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision severity 2', 'fact_collision_severity',
 '2','Non-fatal injury')
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision severity U', 'fact_collision_severity',
 'U','Unknown') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision severity X', 'fact_collision_severity',
 'X','Data refused by the Jurisdiction!')
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision vehicles UU', 
 'fact_collision_no_of_vehicles','UU','Unknown') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision vehicles XX', 
 'fact_collision_no_of_vehicles','XX','Data refused by the Jurisdiction!')
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with collision vehicles 99', 
 'fact_collision_no_of_vehicles','99','99 or more vehicles')
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with person injury severity 1',
 'fact_medical_treatment_flag','1','N') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with person injury severity 2',
 'fact_medical_treatment_flag','2','Y') 
  INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with person injury severity 2',
 'fact_medical_treatment_flag','3','N') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with person injury severity U',
 'fact_medical_treatment_flag','U','Unknown') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with person injury severity X',
 'fact_medical_treatment_flag','X','Data refused by the Jurisdiction!')
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with person injury severity N',
 'fact_medical_treatment_flag','N','Not Applicable')
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with passenger safety device 1',
 'fact_safety_device_flag','1','N') 
  INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with passenger safety device 13',
 'fact_safety_device_flag','13','N') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with passenger safety device 2',
 'fact_safety_device_flag','2','Y')
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with passenger safety device 12',
 'fact_safety_device_flag','12','Y') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with passenger safety device 11',
 'fact_safety_device_flag','11','Y')
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with passenger safety device 10',
 'fact_safety_device_flag','10','Y')   
  INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with passenger safety device 9',
 'fact_safety_device_flag','9','Y') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with passenger safety device UU',
 'fact_safety_device_flag','UU','Unknown') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with passenger safety device XX',
 'fact_safety_device_flag','XX','Data refused by the Jurisdiction!')
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with passenger safety device NN',
 'fact_safety_device_flag','NN','Not Applicable')
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
 (GETDATE(),'Substitution','DW_STAGING.dbo.Tbl_staging_fact','all records with passenger safety device QQ',
 'fact_safety_device_flag','QQ','Other')
 
END 


GO

