USE [DW_DATA]
GO

/****** Object:  StoredProcedure [dbo].[msp_data_manual_date_insertion]    Script Date: 12/09/2014 23:45:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[msp_data_manual_date_insertion] AS
BEGIN
--Manually insert U and X values in the date. Assign value 13 in week day for UU and 14 in week day for XX
--In the same way, assign -1 for financial month, quarter, month overall for UU records and -2 for XX records
--Also assign 0000 for financil year field of the records with UU and XX fields

--year 1999
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999018, 8, 'Unknown', 'UU', 'u', 1, 1, 'January', 'Jan', 1, 1999, 199901, 7, 3, 1999)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999019, 9, 'Refused', 'XX', 'x', 1, 1, 'January', 'Jan', 1, 1999, 199901, 7, 3, 1999)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999028, 8, 'Unknown', 'UU', 'u', 2, 2, 'February', 'Feb', 1, 1999, 199902, 8, 3, 1999)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999029, 9, 'Refused', 'XX', 'x', 2, 2, 'February', 'Feb', 1, 1999, 199902, 8, 3, 1999)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999038, 8, 'Unknown', 'UU', 'u', 3, 3, 'March', 'Mar', 1, 1999, 199903, 9, 3, 1999)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999039, 9, 'Refused', 'XX', 'x', 3, 3, 'March', 'Mar', 1, 1999, 199903, 9, 3, 1999)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999048, 8, 'Unknown', 'UU', 'u', 4, 4, 'April', 'Apr', 2, 1999, 199904, 10, 4, 1999)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999049, 9, 'Refused', 'XX', 'x', 4, 4, 'April', 'Apr', 2, 1999, 199904, 10, 4, 1999)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999058, 8, 'Unknown', 'UU', 'u', 5, 5, 'May', 'May', 2, 1999, 199905, 11, 4, 1999)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999059, 9, 'Refused', 'XX', 'x', 5, 5, 'May', 'May', 2, 1999, 199905, 11, 4, 1999)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999068, 8, 'Unknown', 'UU', 'u', 6, 6, 'June', 'Jun', 2, 1999, 199906, 12, 4, 1999)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999069, 9, 'Refused', 'XX', 'x', 6, 6, 'June', 'Jun', 2, 1999, 199906, 12, 4, 1999)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999078, 8, 'Unknown', 'UU', 'u', 7, 7, 'July', 'Jul', 3, 1999, 199907, 1, 1, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999079, 9, 'Refused', 'XX', 'x', 7, 7, 'July', 'Jul', 3, 1999, 199907, 1, 1, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999088, 8, 'Unknown', 'UU', 'u', 8, 8, 'August', 'Aug', 3, 1999, 199908, 2, 1, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999089, 9, 'Refused', 'XX', 'x', 8, 8, 'August', 'Aug', 3, 1999, 199908, 2, 1, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999098, 8, 'Unknown', 'UU', 'u', 9, 9, 'September', 'Sep', 3, 1999, 199909, 3, 1, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999099, 9, 'Refused', 'XX', 'x', 9, 9, 'September','Sep', 3, 1999, 199909, 3, 1, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999108, 8, 'Unknown', 'UU', 'u', 10, 10, 'October', 'Oct', 4, 1999, 199910, 4, 2, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999109, 9, 'Refused', 'XX', 'x', 10, 10, 'October', 'Oct', 4, 1999, 199910, 4, 2, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999118, 8, 'Unknown', 'UU', 'u', 11, 11, 'November', 'Nov', 4, 1999, 199911, 5, 2, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999119, 9, 'Refused', 'XX', 'x', 11, 11,'November', 'Nov', 4, 1999, 199911, 5, 2, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999128, 8, 'Unknown', 'UU', 'u', 12, 12, 'December', 'Dec', 4, 1999, 199912, 6, 2, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999129, 9, 'Refused', 'XX', 'x', 12, 12, 'December', 'Dec', 4, 1999, 199912, 6, 2, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999138, 8, 'Unknown', 'UU', 'u', 13, -1, 'Unknown', 'UUU', -1, 1999, 199913, 13, -1, 0000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999139, 9, 'Refused', 'XX', 'x', 13, -1, 'Unknown', 'UUU', -1, 1999, 199913, 13, -1, 0000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999148, 8, 'Unknown', 'UU', 'u', 14, -2, 'Refused', 'XXX', -2, 1999, 199914, 14, -2, 0000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(1999149, 9, 'Refused', 'XX', 'x', 14, -2, 'Refused', 'XXX', -2, 1999, 199914, 14, -2, 0000)

--year 2000
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000018, 8, 'Unknown', 'UU', 'u', 1, 13, 'January', 'Jan', 1, 2000, 200001, 7, 3, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000019, 9, 'Refused', 'XX', 'x', 1, 13, 'January', 'Jan', 1, 2000, 200001, 7, 3, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000028, 8, 'Unknown', 'UU', 'u', 2, 14, 'February', 'Feb', 1, 2000, 200002, 8, 3, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000029, 9, 'Refused', 'XX', 'x', 2, 14, 'February', 'Feb', 1, 2000, 200002, 8, 3, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000038, 8, 'Unknown', 'UU', 'u', 3, 15, 'March', 'Mar', 1, 2000, 200003, 9, 3, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000039, 9, 'Refused', 'XX', 'x', 3, 15, 'March', 'Mar', 1, 2000, 200003, 9, 3, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000048, 8, 'Unknown', 'UU', 'u', 4, 16, 'April', 'Apr', 2, 2000, 200004, 10, 4, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000049, 9, 'Refused', 'XX', 'x', 4, 16, 'April', 'Apr', 2, 2000, 200004, 10, 4, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000058, 8, 'Unknown', 'UU', 'u', 5, 17, 'May', 'May', 2, 2000, 200005, 11, 4, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000059, 9, 'Refused', 'XX', 'x', 5, 17, 'May', 'May', 2, 2000, 200005, 11, 4, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000068, 8, 'Unknown', 'UU', 'u', 6, 18, 'June', 'Jun', 2, 2000, 200006, 12, 4, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000069, 9, 'Refused', 'XX', 'x', 6, 18, 'June', 'Jun', 2, 2000, 200006, 12, 4, 2000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000078, 8, 'Unknown', 'UU', 'u', 7, 19, 'July', 'Jul', 3, 2000, 200007, 1, 1, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000079, 9, 'Refused', 'XX', 'x', 7, 19, 'July', 'Jul', 3, 2000, 200007, 1, 1, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000088, 8, 'Unknown', 'UU', 'u', 8, 20, 'August', 'Aug', 3, 2000, 200008, 2, 1, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000089, 9, 'Refused', 'XX', 'x', 8, 20, 'August', 'Aug', 3, 2000, 200008, 2, 1, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000098, 8, 'Unknown', 'UU', 'u', 9, 21, 'September', 'Sep', 3, 2000, 200009, 3, 1, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000099, 9, 'Refused', 'XX', 'x', 9, 21, 'September','Sep', 3, 2000, 200009, 3, 1, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000108, 8, 'Unknown', 'UU', 'u', 10, 22, 'October', 'Oct', 4, 2000, 200010, 4, 2, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000109, 9, 'Refused', 'XX', 'x', 10, 22, 'October', 'Oct', 4, 2000, 200010, 4, 2, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000118, 8, 'Unknown', 'UU', 'u', 11, 23, 'November', 'Nov', 4, 2000, 200011, 5, 2, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000119, 9, 'Refused', 'XX', 'x', 11, 23,'November', 'Nov', 4, 2000, 200011, 5, 2, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000128, 8, 'Unknown', 'UU', 'u', 12, 24, 'December', 'Dec', 4, 2000, 200012, 6, 2, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000129, 9, 'Refused', 'XX', 'x', 12, 24, 'December', 'Dec', 4, 2000, 200012, 6, 2, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000138, 8, 'Unknown', 'UU', 'u', 13, -1, 'Unknown', 'UUU', -1, 2000, 200013, 13, -1, 0000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000139, 9, 'Refused', 'XX', 'x', 13, -1, 'Unknown', 'UUU', -1, 2000, 200013, 13, -1, 0000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000148, 8, 'Unknown', 'UU', 'u', 14, -2, 'Refused', 'XXX', -2, 2000, 200014, 14, -2, 0000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2000149, 9, 'Refused', 'XX', 'x', 14, -2, 'Refused', 'XXX', -2, 2000, 200014, 14, -2, 0000)

--year 2001
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001018, 8, 'Unknown', 'UU', 'u', 1, 25, 'January', 'Jan', 1, 2001, 200101, 7, 3, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001019, 9, 'Refused', 'XX', 'x', 1, 25, 'January', 'Jan', 1, 2001, 200101, 7, 3, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001028, 8, 'Unknown', 'UU', 'u', 2, 26, 'February', 'Feb', 1, 2001, 200102, 8, 3, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001029, 9, 'Refused', 'XX', 'x', 2, 26, 'February', 'Feb', 1, 2001, 200102, 8, 3, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001038, 8, 'Unknown', 'UU', 'u', 3, 27, 'March', 'Mar', 1, 2001, 200103, 9, 3, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001039, 9, 'Refused', 'XX', 'x', 3, 27, 'March', 'Mar', 1, 2001, 200103, 9, 3, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001048, 8, 'Unknown', 'UU', 'u', 4, 28, 'April', 'Apr', 2, 2001, 200104, 10, 4, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001049, 9, 'Refused', 'XX', 'x', 4, 28, 'April', 'Apr', 2, 2001, 200104, 10, 4, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001058, 8, 'Unknown', 'UU', 'u', 5, 29, 'May', 'May', 2, 2001, 200105, 11, 4, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001059, 9, 'Refused', 'XX', 'x', 5, 29, 'May', 'May', 2, 2001, 200105, 11, 4, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001068, 8, 'Unknown', 'UU', 'u', 6, 30, 'June', 'Jun', 2, 2001, 200106, 12, 4, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001069, 9, 'Refused', 'XX', 'x', 6, 30, 'June', 'Jun', 2, 2001, 200106, 12, 4, 2001)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001078, 8, 'Unknown', 'UU', 'u', 7, 31, 'July', 'Jul', 3, 2001, 200107, 1, 1, 2002)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001079, 9, 'Refused', 'XX', 'x', 7, 31, 'July', 'Jul', 3, 2001, 200107, 1, 1, 2002)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001088, 8, 'Unknown', 'UU', 'u', 8, 32, 'August', 'Aug', 3, 2001, 200108, 2, 1, 2002)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001089, 9, 'Refused', 'XX', 'x', 8, 32, 'August', 'Aug', 3, 2001, 200108, 2, 1, 2002)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001098, 8, 'Unknown', 'UU', 'u', 9, 33, 'September', 'Sep', 3, 2001, 200109, 3, 1, 2002)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001099, 9, 'Refused', 'XX', 'x', 9, 33, 'September','Sep', 3, 2001, 200109, 3, 1, 2002)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001108, 8, 'Unknown', 'UU', 'u', 10, 34, 'October', 'Oct', 4, 2001, 200110, 4, 2, 2002)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001109, 9, 'Refused', 'XX', 'x', 10, 34, 'October', 'Oct', 4, 2001, 200110, 4, 2, 2002)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001118, 8, 'Unknown', 'UU', 'u', 11, 35, 'November', 'Nov', 4, 2001, 200111, 5, 2, 2002)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001119, 9, 'Refused', 'XX', 'x', 11, 35,'November', 'Nov', 4, 2001, 200111, 5, 2, 2002)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001128, 8, 'Unknown', 'UU', 'u', 12, 36, 'December', 'Dec', 4, 2001, 200112, 6, 2, 2002)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001129, 9, 'Refused', 'XX', 'x', 12, 36, 'December', 'Dec', 4, 2001, 200112, 6, 2, 2002)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001138, 8, 'Unknown', 'UU', 'u', 13, -1, 'Unknown', 'UUU', -1, 2001, 200113, 13, -1, 0000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001139, 9, 'Refused', 'XX', 'x', 13, -1, 'Unknown', 'UUU', -1, 2001, 200113, 13, -1, 0000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001148, 8, 'Unknown', 'UU', 'u', 14, -2, 'Refused', 'XXX', -2, 2001, 200114, 14, -2, 0000)
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2001149, 9, 'Refused', 'XX', 'x', 14, -2, 'Refused', 'XXX', -2, 2001, 200114, 14, -2, 0000)

--year 2002
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2002018, 8, 'Unknown', 'UU', 'u', 1, 37, 'January', 'Jan', 1, 2002, 200201, 7, 3, 2002)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2002028, 8, 'Unknown', 'UU', 'u', 2, 38, 'February', 'Feb', 1, 2002, 200202, 8, 3, 2002)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2002038, 8, 'Unknown', 'UU', 'u', 3, 39, 'March', 'Mar', 1, 2002, 200203, 9, 3, 2002)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2002048, 8, 'Unknown', 'UU', 'u', 4, 40, 'April', 'Apr', 2, 2002, 200204, 10, 4, 2002)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2002058, 8, 'Unknown', 'UU', 'u', 5, 41, 'May', 'May', 2, 2002, 200205, 11, 4, 2002)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2002068, 8, 'Unknown', 'UU', 'u', 6, 42, 'June', 'Jun', 2, 2002, 200206, 12, 4, 2002)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2002078, 8, 'Unknown', 'UU', 'u', 7, 43, 'July', 'Jul', 3, 2002, 200207, 1, 1, 2003)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2002088, 8, 'Unknown', 'UU', 'u', 8, 44, 'August', 'Aug', 3, 2002, 200208, 2, 1, 2003)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2002098, 8, 'Unknown', 'UU', 'u', 9, 45, 'September', 'Sep', 3, 2002, 200209, 3, 1, 2003)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2002108, 8, 'Unknown', 'UU', 'u', 10, 46, 'October', 'Oct', 4, 2002, 200210, 4, 2, 2003)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2002118, 8, 'Unknown', 'UU', 'u', 11, 47, 'November', 'Nov', 4, 2002, 200211, 5, 2, 2003)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2002128, 8, 'Unknown', 'UU', 'u', 12, 48, 'December', 'Dec', 4, 2002, 200212, 6, 2, 2003)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2002138, 8, 'Unknown', 'UU', 'u', 13, -1, 'Unknown', 'UUU', -1, 2002, 200213, 13, -1, 0000)

--year 2003
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2003018, 8, 'Unknown', 'UU', 'u', 1, 49, 'January', 'Jan', 1, 2003, 200301, 7, 3, 2003)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2003028, 8, 'Unknown', 'UU', 'u', 2, 50, 'February', 'Feb', 1, 2003, 200302, 8, 3, 2003)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2003038, 8, 'Unknown', 'UU', 'u', 3, 51, 'March', 'Mar', 1, 2003, 200303, 9, 3, 2003)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2003048, 8, 'Unknown', 'UU', 'u', 4, 52, 'April', 'Apr', 2, 2003, 200304, 10, 4, 2003)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2003058, 8, 'Unknown', 'UU', 'u', 5, 53, 'May', 'May', 2, 2003, 200305, 11, 4, 2003)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2003068, 8, 'Unknown', 'UU', 'u', 6, 54, 'June', 'Jun', 2, 2003, 200306, 12, 4, 2003)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2003078, 8, 'Unknown', 'UU', 'u', 7, 55, 'July', 'Jul', 3, 2003, 200307, 1, 1, 2004)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2003088, 8, 'Unknown', 'UU', 'u', 8, 56, 'August', 'Aug', 3, 2003, 200308, 2, 1, 2004)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2003098, 8, 'Unknown', 'UU', 'u', 9, 57, 'September', 'Sep', 3, 2003, 200309, 3, 1, 2004)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2003108, 8, 'Unknown', 'UU', 'u', 10, 58, 'October', 'Oct', 4, 2003, 200310, 4, 2, 2004)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2003118, 8, 'Unknown', 'UU', 'u', 11, 59, 'November', 'Nov', 4, 2003, 200311, 5, 2, 2004)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2003128, 8, 'Unknown', 'UU', 'u', 12, 60, 'December', 'Dec', 4, 2003, 200312, 6, 2, 2004)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2003138, 8, 'Unknown', 'UU', 'u', 13, -1, 'Unknown', 'UUU', -1, 2003, 200313, 13, -1, 0000)

--year 2004
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2004018, 8, 'Unknown', 'UU', 'u', 1, 61, 'January', 'Jan', 1, 2004, 200401, 7, 3, 2004)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2004028, 8, 'Unknown', 'UU', 'u', 2, 62, 'February', 'Feb', 1, 2004, 200402, 8, 3, 2004)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2004038, 8, 'Unknown', 'UU', 'u', 3, 63, 'March', 'Mar', 1, 2004, 200403, 9, 3, 2004)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2004048, 8, 'Unknown', 'UU', 'u', 4, 64, 'April', 'Apr', 2, 2004, 200404, 10, 4, 2004)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2004058, 8, 'Unknown', 'UU', 'u', 5, 65, 'May', 'May', 2, 2004, 200405, 11, 4, 2004)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2004068, 8, 'Unknown', 'UU', 'u', 6, 66, 'June', 'Jun', 2, 2004, 200406, 12, 4, 2004)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2004078, 8, 'Unknown', 'UU', 'u', 7, 67, 'July', 'Jul', 3, 2004, 200407, 1, 1, 2005)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2004088, 8, 'Unknown', 'UU', 'u', 8, 68, 'August', 'Aug', 3, 2004, 200408, 2, 1, 2005)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2004098, 8, 'Unknown', 'UU', 'u', 9, 69, 'September', 'Sep', 3, 2004, 200409, 3, 1, 2005)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2004108, 8, 'Unknown', 'UU', 'u', 10, 70, 'October', 'Oct', 4, 2004, 200410, 4, 2, 2005)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2004118, 8, 'Unknown', 'UU', 'u', 11, 71, 'November', 'Nov', 4, 2004, 200411, 5, 2, 2005)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2004128, 8, 'Unknown', 'UU', 'u', 12, 72, 'December', 'Dec', 4, 2004, 200412, 6, 2, 2005)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2004138, 8, 'Unknown', 'UU', 'u', 13, -1, 'Unknown', 'UUU', -1, 2004, 200413, 13, -1, 0000)

--year 2005
INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2005018, 8, 'Unknown', 'UU', 'u', 1, 73, 'January', 'Jan', 1, 2005, 200501, 7, 3, 2005)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2005028, 8, 'Unknown', 'UU', 'u', 2, 74, 'February', 'Feb', 1, 2005, 200502, 8, 3, 2005)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2005038, 8, 'Unknown', 'UU', 'u', 3, 75, 'March', 'Mar', 1, 2005, 200503, 9, 3, 2005)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2005048, 8, 'Unknown', 'UU', 'u', 4, 76, 'April', 'Apr', 2, 2005, 200504, 10, 4, 2005)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2005058, 8, 'Unknown', 'UU', 'u', 5, 77, 'May', 'May', 2, 2005, 200505, 11, 4, 2005)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2005068, 8, 'Unknown', 'UU', 'u', 6, 78, 'June', 'Jun', 2, 2005, 200506, 12, 4, 2005)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2005078, 8, 'Unknown', 'UU', 'u', 7, 79, 'July', 'Jul', 3, 2005, 200507, 1, 1, 2006)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2005088, 8, 'Unknown', 'UU', 'u', 8, 80, 'August', 'Aug', 3, 2005, 200508, 2, 1, 2006)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2005098, 8, 'Unknown', 'UU', 'u', 9, 81, 'September', 'Sep', 3, 2005, 200509, 3, 1, 2006)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2005108, 8, 'Unknown', 'UU', 'u', 10, 82, 'October', 'Oct', 4, 2005, 200510, 4, 2, 2006)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2005118, 8, 'Unknown', 'UU', 'u', 11, 83, 'November', 'Nov', 4, 2005, 200511, 5, 2, 2006)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2005128, 8, 'Unknown', 'UU', 'u', 12, 84, 'December', 'Dec', 4, 2005, 200512, 6, 2, 2006)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2005138, 8, 'Unknown', 'UU', 'u', 13, -1, 'Unknown', 'UUU', -1, 2005, 200513, 13, -1, 0000)

--year 2006
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2006018, 8, 'Unknown', 'UU', 'u', 1, 85, 'January', 'Jan', 1, 2006, 200601, 7, 3, 2006)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2006028, 8, 'Unknown', 'UU', 'u', 2, 86, 'February', 'Feb', 1, 2006, 200602, 8, 3, 2006)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2006038, 8, 'Unknown', 'UU', 'u', 3, 87, 'March', 'Mar', 1, 2006, 200603, 9, 3, 2006)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2006048, 8, 'Unknown', 'UU', 'u', 4, 88, 'April', 'Apr', 2, 2006, 200604, 10, 4, 2006)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2006058, 8, 'Unknown', 'UU', 'u', 5, 89, 'May', 'May', 2, 2006, 200605, 11, 4, 2006)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2006068, 8, 'Unknown', 'UU', 'u', 6, 90, 'June', 'Jun', 2, 2006, 200606, 12, 4, 2006)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2006078, 8, 'Unknown', 'UU', 'u', 7, 91, 'July', 'Jul', 3, 2006, 200607, 1, 1, 2007)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2006088, 8, 'Unknown', 'UU', 'u', 8, 92, 'August', 'Aug', 3, 2006, 200608, 2, 1, 2007)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2006098, 8, 'Unknown', 'UU', 'u', 9, 93, 'September', 'Sep', 3, 2006, 200609, 3, 1, 2007)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2006108, 8, 'Unknown', 'UU', 'u', 10, 94, 'October', 'Oct', 4, 2006, 200610, 4, 2, 2007)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2006118, 8, 'Unknown', 'UU', 'u', 11, 95, 'November', 'Nov', 4, 2006, 200611, 5, 2, 2007)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2006128, 8, 'Unknown', 'UU', 'u', 12, 96, 'December', 'Dec', 4, 2006, 200612, 6, 2, 2007)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2006138, 8, 'Unknown', 'UU', 'u', 13, -1, 'Unknown', 'UUU', -1, 2006, 200613, 13, -1, 0000)
 
--year 2007
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2007018, 8, 'Unknown', 'UU', 'u', 1, 97, 'January', 'Jan', 1, 2007, 200701, 7, 3, 2007)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2007028, 8, 'Unknown', 'UU', 'u', 2, 98, 'February', 'Feb', 1, 2007, 200702, 8, 3, 2007)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2007038, 8, 'Unknown', 'UU', 'u', 3, 99, 'March', 'Mar', 1, 2007, 200703, 9, 3, 2007)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2007048, 8, 'Unknown', 'UU', 'u', 4, 100, 'April', 'Apr', 2, 2007, 200704, 10, 4, 2007)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2007058, 8, 'Unknown', 'UU', 'u', 5, 101, 'May', 'May', 2, 2007, 200705, 11, 4, 2007)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2007068, 8, 'Unknown', 'UU', 'u', 6, 102, 'June', 'Jun', 2, 2007, 200706, 12, 4, 2007)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2007078, 8, 'Unknown', 'UU', 'u', 7, 103, 'July', 'Jul', 3, 2007, 200707, 1, 1, 2008)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2007088, 8, 'Unknown', 'UU', 'u', 8, 104, 'August', 'Aug', 3, 2007, 200708, 2, 1, 2008)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2007098, 8, 'Unknown', 'UU', 'u', 9, 105, 'September', 'Sep', 3, 2007, 200709, 3, 1, 2008)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2007108, 8, 'Unknown', 'UU', 'u', 10, 106, 'October', 'Oct', 4, 2007, 200710, 4, 2, 2008)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2007118, 8, 'Unknown', 'UU', 'u', 11, 107, 'November', 'Nov', 4, 2007, 200711, 5, 2, 2008)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2007128, 8, 'Unknown', 'UU', 'u', 12, 108, 'December', 'Dec', 4, 2007, 200712, 6, 2, 2008)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2007138, 8, 'Unknown', 'UU', 'u', 13, -1, 'Unknown', 'UUU', -1, 2007, 200713, 13, -1, 0000)

 --year 2008
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2008018, 8, 'Unknown', 'UU', 'u', 1, 109, 'January', 'Jan', 1, 2008, 200801, 7, 3, 2008)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2008028, 8, 'Unknown', 'UU', 'u', 2, 110, 'February', 'Feb', 1, 2008, 200802, 8, 3, 2008)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2008038, 8, 'Unknown', 'UU', 'u', 3, 111, 'March', 'Mar', 1, 2008, 200803, 9, 3, 2008)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2008048, 8, 'Unknown', 'UU', 'u', 4, 112, 'April', 'Apr', 2, 2008, 200804, 10, 4, 2008)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2008058, 8, 'Unknown', 'UU', 'u', 5, 113, 'May', 'May', 2, 2008, 200805, 11, 4, 2008)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2008068, 8, 'Unknown', 'UU', 'u', 6, 114, 'June', 'Jun', 2, 2008, 200806, 12, 4, 2008)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2008078, 8, 'Unknown', 'UU', 'u', 7, 115, 'July', 'Jul', 3, 2008, 200807, 1, 1, 2009)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2008088, 8, 'Unknown', 'UU', 'u', 8, 116, 'August', 'Aug', 3, 2008, 200808, 2, 1, 2009)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2008098, 8, 'Unknown', 'UU', 'u', 9, 117, 'September', 'Sep', 3, 2008, 200809, 3, 1, 2009)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2008108, 8, 'Unknown', 'UU', 'u', 10, 118, 'October', 'Oct', 4, 2008, 200810, 4, 2, 2009)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2008118, 8, 'Unknown', 'UU', 'u', 11, 119, 'November', 'Nov', 4, 2008, 200811, 5, 2, 2009)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2008128, 8, 'Unknown', 'UU', 'u', 12, 120, 'December', 'Dec', 4, 2008, 200812, 6, 2, 2009)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2008138, 8, 'Unknown', 'UU', 'u', 13, -1, 'Unknown', 'UUU', -1, 2008, 200813, 13, -1, 0000)
 
 --year 2009
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2009018, 8, 'Unknown', 'UU', 'u', 1, 121, 'January', 'Jan', 1, 2009, 200901, 7, 3, 2009)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2009028, 8, 'Unknown', 'UU', 'u', 2, 122, 'February', 'Feb', 1, 2009, 200902, 8, 3, 2009)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2009038, 8, 'Unknown', 'UU', 'u', 3, 123, 'March', 'Mar', 1, 2009, 200903, 9, 3, 2009)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2009048, 8, 'Unknown', 'UU', 'u', 4, 124, 'April', 'Apr', 2, 2009, 200904, 10, 4, 2009)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2009058, 8, 'Unknown', 'UU', 'u', 5, 125, 'May', 'May', 2, 2009, 200905, 11, 4, 2009)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2009068, 8, 'Unknown', 'UU', 'u', 6, 126, 'June', 'Jun', 2, 2009, 200906, 12, 4, 2009)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2009078, 8, 'Unknown', 'UU', 'u', 7, 127, 'July', 'Jul', 3, 2009, 200907, 1, 1, 2010)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2009088, 8, 'Unknown', 'UU', 'u', 8, 128, 'August', 'Aug', 3, 2009, 200908, 2, 1, 2010)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2009098, 8, 'Unknown', 'UU', 'u', 9, 129, 'September', 'Sep', 3, 2009, 200909, 3, 1, 2010)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2009108, 8, 'Unknown', 'UU', 'u', 10, 130, 'October', 'Oct', 4, 2009, 200910, 4, 2, 2010)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2009118, 8, 'Unknown', 'UU', 'u', 11, 131, 'November', 'Nov', 4, 2009, 200911, 5, 2, 2010)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2009128, 8, 'Unknown', 'UU', 'u', 12, 132, 'December', 'Dec', 4, 2009, 200912, 6, 2, 2010)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2009138, 8, 'Unknown', 'UU', 'u', 13, -1, 'Unknown', 'UUU', -1, 2009, 200913, 13, -1, 0000)

--year 2010
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2010018, 8, 'Unknown', 'UU', 'u', 1, 133, 'January', 'Jan', 1, 2010, 201001, 7, 3, 2010)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2010028, 8, 'Unknown', 'UU', 'u', 2, 134, 'February', 'Feb', 1, 2010, 201002, 8, 3, 2010)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2010038, 8, 'Unknown', 'UU', 'u', 3, 135, 'March', 'Mar', 1, 2010, 201003, 9, 3, 2010)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2010048, 8, 'Unknown', 'UU', 'u', 4, 136, 'April', 'Apr', 2, 2010, 201004, 10, 4, 2010)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2010058, 8, 'Unknown', 'UU', 'u', 5, 137, 'May', 'May', 2, 2010, 201005, 11, 4, 2010)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2010068, 8, 'Unknown', 'UU', 'u', 6, 138, 'June', 'Jun', 2, 2010, 201006, 12, 4, 2010)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2010078, 8, 'Unknown', 'UU', 'u', 7, 139, 'July', 'Jul', 3, 2010, 201007, 1, 1, 2011)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2010088, 8, 'Unknown', 'UU', 'u', 8, 140, 'August', 'Aug', 3, 2010, 201008, 2, 1, 2011)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2010098, 8, 'Unknown', 'UU', 'u', 9, 141, 'September', 'Sep', 3, 2010, 201009, 3, 1, 2011)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2010108, 8, 'Unknown', 'UU', 'u', 10, 142, 'October', 'Oct', 4, 2010, 201010, 4, 2, 2011)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2010118, 8, 'Unknown', 'UU', 'u', 11, 143, 'November', 'Nov', 4, 2010, 201011, 5, 2, 2011)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2010128, 8, 'Unknown', 'UU', 'u', 12, 144, 'December', 'Dec', 4, 2010, 201012, 6, 2, 2011)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2010138, 8, 'Unknown', 'UU', 'u', 13, -1, 'Unknown', 'UUU', -1, 2010, 201013, 13, -1, 0000)

--year 2011
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2011018, 8, 'Unknown', 'UU', 'u', 1, 145, 'January', 'Jan', 1, 2011, 201101, 7, 3, 2011)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2011028, 8, 'Unknown', 'UU', 'u', 2, 146, 'February', 'Feb', 1, 2011, 201102, 8, 3, 2011)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2011038, 8, 'Unknown', 'UU', 'u', 3, 147, 'March', 'Mar', 1, 2011, 201103, 9, 3, 2011)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2011048, 8, 'Unknown', 'UU', 'u', 4, 148, 'April', 'Apr', 2, 2011, 201104, 10, 4, 2011)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2011058, 8, 'Unknown', 'UU', 'u', 5, 149, 'May', 'May', 2, 2011, 201105, 11, 4, 2011)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2011068, 8, 'Unknown', 'UU', 'u', 6, 150, 'June', 'Jun', 2, 2011, 201106, 12, 4, 2011)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2011078, 8, 'Unknown', 'UU', 'u', 7, 151, 'July', 'Jul', 3, 2011, 201107, 1, 1, 2012)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2011088, 8, 'Unknown', 'UU', 'u', 8, 152, 'August', 'Aug', 3, 2011, 201108, 2, 1, 2012)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2011098, 8, 'Unknown', 'UU', 'u', 9, 153, 'September', 'Sep', 3, 2011, 201109, 3, 1, 2012)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2011108, 8, 'Unknown', 'UU', 'u', 10, 154, 'October', 'Oct', 4, 2011, 201110, 4, 2, 2012)
  INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2011118, 8, 'Unknown', 'UU', 'u', 11, 155, 'November', 'Nov', 4, 2011, 201111, 5, 2, 2012)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2011128, 8, 'Unknown', 'UU', 'u', 12, 156, 'December', 'Dec', 4, 2011, 201112, 6, 2, 2012)
 INSERT INTO DW_DATA.dbo.Tbl_data_date VALUES 
(2011138, 8, 'Unknown', 'UU', 'u', 13, -1, 'Unknown', 'UUU', -1, 2011, 201113, 13, -1, 0000)
 

--Record these changes in the log table
INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
(GETDATE(), 'Value assignment', 'DW_DATA.dbo.Tbl_data_date', 'day_of_week', 'all records in 
  master table of staging layer with col_wday equal to U', 'U', '8')
INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
(GETDATE(), 'Value assignment', 'DW_DATA.dbo.Tbl_data_date', 'day_of_week', 'all records in 
  master table of staging layer with col_wday equal to X', 'X', '9') 
 INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
(GETDATE(), 'Value assignment', 'DW_DATA.dbo.Tbl_data_date', 'month', 'all records in 
  master table of staging layer with col_mnth equal to UU', 'UU', '13')
INSERT INTO DW_DATA.dbo.Tbl_data_logging VALUES
(GETDATE(), 'Value assignment', 'DW_DATA.dbo.Tbl_data_date', 'month', 'all records in 
  master table of staging layer with col_mnth equal to XX', 'XX', '14') 
  
END


GO

