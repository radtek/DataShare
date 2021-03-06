/*
   21 August 201415:03:39
   User: 
   Server: CLESQL01
   Database: DataShare
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/



BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION

IF NOT EXISTS(SELECT * FROM sys.columns 
		WHERE [name] = N'DefaultDisplayWeight' AND [object_id] = OBJECT_ID(N'DS_DataSetSchemaColumns'))
BEGIN
	-- Column Not Exists
ALTER TABLE dbo.DS_DataSetSchemaColumns ADD
	DefaultDisplayWeight int NULL
ALTER TABLE dbo.DS_DataSetSchemaColumns ADD CONSTRAINT
	DF_DS_DataSetSchemaColumns_DefaultDisplayWeight DEFAULT 0 FOR DefaultDisplayWeight
END

COMMIT


