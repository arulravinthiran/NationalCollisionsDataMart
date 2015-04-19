USE [DW_NCDM]
GO

/****** Object:  StoredProcedure [dbo].[msp_NCDM_fact]    Script Date: 12/10/2014 00:47:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[msp_NCDM_fact] 
AS
BEGIN

 
 --insert records into fact table
 INSERT INTO DW_MIS.dbo.Tbl_MIS_fact(date_key,passenger_key,collision_key,vehicle_key,fact_collision_hour,
  fact_collision_no_of_vehicles,fact_collision_severity,fact_medical_treatment_flag,fact_safety_device_flag)

SELECT  tmDt.date_key, tmlkPgr.passenger_key, tmlkCln.collision_key, tmlkVh.vehicle_key, 
tdFct.fact_collision_hour, tdFct.fact_collision_no_of_vehicles, tdFct.fact_collision_severity, tdFct.fact_medical_treatment_flag,
tdFct.fact_safety_device_flag


FROM DW_DATA.dbo.Tbl_Data_fact tdFct LEFT JOIN DW_MIS.dbo.Tbl_MIS_Date tmDt 
        ON tdFct.fact_date_id = tmDt.date_key LEFT JOIN DW_MIS.dbo.Tbl_MIS_Lkp_Passenger tmlkPgr
        ON tmlkPgr.passenger_id = tdFct.fact_passenger_id LEFT JOIN DW_MIS.dbo.Tbl_MIS_Lkp_collision tmlkCln
        ON tmlkCln.collision_id = tdFct.fact_collision_id LEFT JOIN DW_MIS.dbo.Tbl_MIS_Lkp_Vehicle tmlkVh
        ON tmlkVh.vehicle_id = tdFct.fact_vehicle_id LEFT JOIN DW_MIS.dbo.Tbl_MIS_Fact tmFct
        ON (tmFct.date_key = tmDt.date_key AND tmFct.passenger_key = tmlkPgr.passenger_key
         AND tmFct.collision_key = tmlkCln.collision_key AND tmFct.vehicle_key = tmlkVh.vehicle_key)
     
 WHERE tmFct.date_key IS NULL AND tmDt.date_key IS NOT NULL AND tdFct.fact_date_id IS NOT NULL AND
  tmFct.passenger_key IS NULL AND tdFct.fact_passenger_id IS NOT NULL AND  tmlkPgr.passenger_key IS NOT NULL
  AND tmFct.collision_key IS NULL AND  tmlkCln.collision_key IS NOT NULL AND tdFct.fact_collision_id IS NOT NULL
  AND tmFct.vehicle_key IS NULL AND  tmlkVh.vehicle_key IS NOT NULL AND tdFct.fact_vehicle_id IS NOT NULL


END



GO

