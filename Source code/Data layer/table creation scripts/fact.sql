USE [DW_DATA]
GO

/****** Object:  Table [dbo].[Tbl_Data_fact]    Script Date: 12/09/2014 23:43:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tbl_Data_fact](
	[date_xf] [datetime] NOT NULL,
	[fact_date_id] [int] NOT NULL,
	[fact_passenger_id] [int] NOT NULL,
	[fact_collision_id] [int] NOT NULL,
	[fact_vehicle_id] [int] NOT NULL,
	[fact_collision_hour_description] [nvarchar](max) NOT NULL,
	[fact_collision_severity_description] [nvarchar](max) NOT NULL,
	[fact_collision_no_of_vehicles_description] [nvarchar](max) NOT NULL,
	[fact_medical_treatment_flag] [nvarchar](max) NOT NULL,
	[fact_safety_device_flag] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Tbl_Data_fact] PRIMARY KEY CLUSTERED 
(
	[fact_date_id] ASC,
	[fact_passenger_id] ASC,
	[fact_collision_id] ASC,
	[fact_vehicle_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Tbl_Data_fact]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Data_fact_Tbl_data_Collision] FOREIGN KEY([fact_collision_id])
REFERENCES [dbo].[Tbl_data_Collision] ([collision_id])
GO

ALTER TABLE [dbo].[Tbl_Data_fact] CHECK CONSTRAINT [FK_Tbl_Data_fact_Tbl_data_Collision]
GO

ALTER TABLE [dbo].[Tbl_Data_fact]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Data_fact_Tbl_data_Passenger] FOREIGN KEY([fact_passenger_id])
REFERENCES [dbo].[Tbl_data_Passenger] ([passenger_id])
GO

ALTER TABLE [dbo].[Tbl_Data_fact] CHECK CONSTRAINT [FK_Tbl_Data_fact_Tbl_data_Passenger]
GO

ALTER TABLE [dbo].[Tbl_Data_fact]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Data_fact_Tbl_data_Vehicle] FOREIGN KEY([fact_vehicle_id])
REFERENCES [dbo].[Tbl_data_Vehicle] ([vehicle_id])
GO

ALTER TABLE [dbo].[Tbl_Data_fact] CHECK CONSTRAINT [FK_Tbl_Data_fact_Tbl_data_Vehicle]
GO

ALTER TABLE [dbo].[Tbl_Data_fact]  WITH CHECK ADD  CONSTRAINT [CK_Tbl_Data_fact_medical_treatment_flag] CHECK  (([fact_medical_treatment_flag]='N' OR [fact_medical_treatment_flag]='Y' OR [fact_medical_treatment_flag]='Unknown' OR [fact_medical_treatment_flag]='Not Applicable' OR [fact_medical_treatment_flag]='Data refused by the Jurisdiction!'))
GO

ALTER TABLE [dbo].[Tbl_Data_fact] CHECK CONSTRAINT [CK_Tbl_Data_fact_medical_treatment_flag]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fact_medical_treatment_flag should be only ''Y'' or ''N''' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tbl_Data_fact', @level2type=N'CONSTRAINT',@level2name=N'CK_Tbl_Data_fact_medical_treatment_flag'
GO

ALTER TABLE [dbo].[Tbl_Data_fact]  WITH CHECK ADD  CONSTRAINT [CK_Tbl_Data_fact_safety_device_flag] CHECK  (([fact_safety_device_flag]='N' OR [fact_safety_device_flag]='Y' OR [fact_safety_device_flag]='Other options' OR [fact_safety_device_flag]='Unknown' OR [fact_safety_device_flag]='Data refused by the jurisdiction!' OR [fact_safety_device_flag]='Not Applicable'))
GO

ALTER TABLE [dbo].[Tbl_Data_fact] CHECK CONSTRAINT [CK_Tbl_Data_fact_safety_device_flag]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fact_safety_device_flag should be only ''Y'' or ''N''' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tbl_Data_fact', @level2type=N'CONSTRAINT',@level2name=N'CK_Tbl_Data_fact_safety_device_flag'
GO

