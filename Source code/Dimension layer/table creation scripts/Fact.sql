USE [DW_NCDM]
GO

/****** Object:  Table [dbo].[Tbl_NCDM_Fact]    Script Date: 12/10/2014 00:45:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tbl_NCDM_Fact](
	[date_key] [int] NOT NULL,
	[passenger_key] [int] NOT NULL,
	[collision_key] [int] NOT NULL,
	[vehicle_key] [int] NOT NULL,
	[fact_collision_hour_description] [nvarchar](max) NOT NULL,
	[fact_collision_severity_description] [nvarchar](max) NOT NULL,
	[fact_collision_no_of_vehicles_description] [nvarchar](max) NOT NULL,
	[fact_medical_treatment_flag] [nvarchar](max) NOT NULL,
	[fact_safety_device_flag] [nvarchar](max) NOT NULL,
	[fact_safety_device] [int] NOT NULL,
	[fact_medical_treatment] [int] NOT NULL,
	[fact_collision_severity] [int] NOT NULL,
	[fact_collision_no_of_vehicles] [int] NOT NULL,
	[fact_collision_hour] [int] NOT NULL,
	[fact_fatal_collision_flag] [int] NULL,
	[fact_non_fatal_collision_flag] [int] NULL,
 CONSTRAINT [PK_Tbl_MIS_Fact] PRIMARY KEY CLUSTERED 
(
	[date_key] ASC,
	[passenger_key] ASC,
	[collision_key] ASC,
	[vehicle_key] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Tbl_NCDM_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_MIS_Fact_Tbl_MIS_Collision] FOREIGN KEY([collision_key])
REFERENCES [dbo].[Tbl_NCDM_Collision] ([collision_key])
GO

ALTER TABLE [dbo].[Tbl_NCDM_Fact] CHECK CONSTRAINT [FK_Tbl_MIS_Fact_Tbl_MIS_Collision]
GO

ALTER TABLE [dbo].[Tbl_NCDM_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_MIS_Fact_Tbl_MIS_Date] FOREIGN KEY([date_key])
REFERENCES [dbo].[Tbl_NCDM_Date] ([date_key])
GO

ALTER TABLE [dbo].[Tbl_NCDM_Fact] CHECK CONSTRAINT [FK_Tbl_MIS_Fact_Tbl_MIS_Date]
GO

ALTER TABLE [dbo].[Tbl_NCDM_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_MIS_Fact_Tbl_MIS_Passenger] FOREIGN KEY([passenger_key])
REFERENCES [dbo].[Tbl_NCDM_Passenger] ([passenger_key])
GO

ALTER TABLE [dbo].[Tbl_NCDM_Fact] CHECK CONSTRAINT [FK_Tbl_MIS_Fact_Tbl_MIS_Passenger]
GO

ALTER TABLE [dbo].[Tbl_NCDM_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_MIS_Fact_Tbl_MIS_Vehicle] FOREIGN KEY([vehicle_key])
REFERENCES [dbo].[Tbl_NCDM_Vehicle] ([vehicle_key])
GO

ALTER TABLE [dbo].[Tbl_NCDM_Fact] CHECK CONSTRAINT [FK_Tbl_MIS_Fact_Tbl_MIS_Vehicle]
GO

