USE [DW_DATA]
GO

/****** Object:  Table [dbo].[Tbl_data_logging]    Script Date: 12/09/2014 23:44:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Tbl_data_logging](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[date_xf] [datetime] NOT NULL,
	[log_category] [varchar](50) NOT NULL,
	[table_name] [varchar](100) NOT NULL,
	[column_name] [varchar](100) NOT NULL,
	[record_identifier] [varchar](100) NOT NULL,
	[given_value] [varchar](255) NOT NULL,
	[changed_value] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Tbl_data_logging] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Tbl_data_logging]  WITH CHECK ADD  CONSTRAINT [chk_log_category] CHECK  (([log_category]='Other' OR [log_category]='Error 
recording' OR [log_category]='Duplicate removal' OR [log_category]='Value assignment' OR [log_category]='Substitution' OR [log_category]='Error recording'))
GO

ALTER TABLE [dbo].[Tbl_data_logging] CHECK CONSTRAINT [chk_log_category]
GO

