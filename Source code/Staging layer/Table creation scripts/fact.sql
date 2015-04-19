USE [DW_STAGING]
GO

/****** Object:  Table [dbo].[Tbl_staging_fact]    Script Date: 12/10/2014 00:49:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Tbl_staging_fact](
	[date_xf] [datetime] NOT NULL,
	[fact_id] [int] IDENTITY(1,1) NOT NULL,
	[fact_date_id] [nvarchar](255) NOT NULL,
	[fact_passenger_id] [int] NOT NULL,
	[fact_collision_id] [int] NOT NULL,
	[fact_vehicle_id] [int] NOT NULL,
	[fact_collision_hour] [varchar](50) NOT NULL,
	[fact_collision_severity] [varchar](50) NOT NULL,
	[fact_collision_no_of_vehicles] [varchar](50) NOT NULL,
	[fact_medical_treatment_flag] [varchar](255) NOT NULL,
	[fact_safety_device_flag] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Tbl_staging_fact] PRIMARY KEY CLUSTERED 
(
	[fact_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Tbl_staging_fact]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_staging_fact_Tbl_staging_Collision] FOREIGN KEY([fact_collision_id])
REFERENCES [dbo].[Tbl_staging_Collision] ([collision_id])
GO

ALTER TABLE [dbo].[Tbl_staging_fact] CHECK CONSTRAINT [FK_Tbl_staging_fact_Tbl_staging_Collision]
GO

ALTER TABLE [dbo].[Tbl_staging_fact]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_staging_fact_Tbl_staging_date] FOREIGN KEY([fact_date_id])
REFERENCES [dbo].[Tbl_staging_date] ([date_id])
GO

ALTER TABLE [dbo].[Tbl_staging_fact] CHECK CONSTRAINT [FK_Tbl_staging_fact_Tbl_staging_date]
GO

ALTER TABLE [dbo].[Tbl_staging_fact]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_staging_fact_Tbl_staging_Passenger] FOREIGN KEY([fact_passenger_id])
REFERENCES [dbo].[Tbl_staging_Passenger] ([passenger_id])
GO

ALTER TABLE [dbo].[Tbl_staging_fact] CHECK CONSTRAINT [FK_Tbl_staging_fact_Tbl_staging_Passenger]
GO

ALTER TABLE [dbo].[Tbl_staging_fact]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_staging_fact_Tbl_staging_Vehicle] FOREIGN KEY([fact_vehicle_id])
REFERENCES [dbo].[Tbl_staging_Vehicle] ([vehicle_id])
GO

ALTER TABLE [dbo].[Tbl_staging_fact] CHECK CONSTRAINT [FK_Tbl_staging_fact_Tbl_staging_Vehicle]
GO

