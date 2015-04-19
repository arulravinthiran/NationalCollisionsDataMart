USE [DW_STAGING]
GO

/****** Object:  Table [dbo].[Tbl_Staging_NCDmaster]    Script Date: 12/10/2014 00:50:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tbl_Staging_NCDmaster](
	[collision_year] [nvarchar](255) NULL,
	[collision_month] [nvarchar](255) NULL,
	[collision_week_day] [nvarchar](255) NULL,
	[collision_hour] [nvarchar](255) NULL,
	[collision_severity] [nvarchar](255) NULL,
	[collision_no_of_vehicles] [nvarchar](255) NULL,
	[collision_configuration] [nvarchar](255) NULL,
	[collision_road_configuration] [nvarchar](255) NULL,
	[collision_weather] [nvarchar](255) NULL,
	[collision_road_surface] [nvarchar](255) NULL,
	[collision_road_alignment] [nvarchar](255) NULL,
	[collision_traffic_control] [nvarchar](255) NULL,
	[vehicle_sequence_number] [nvarchar](255) NULL,
	[vehicle_type] [nvarchar](255) NULL,
	[vehicle_model_year] [nvarchar](255) NULL,
	[passenger_sequence_number] [nvarchar](255) NULL,
	[passenger_sex] [nvarchar](255) NULL,
	[passenger_age_group] [nvarchar](255) NULL,
	[passenger_position_number] [nvarchar](255) NULL,
	[passenger_severity] [nvarchar](255) NULL,
	[passenger_safety_device] [nvarchar](255) NULL,
	[passenger_road_user_class] [nvarchar](255) NULL
) ON [PRIMARY]

GO

