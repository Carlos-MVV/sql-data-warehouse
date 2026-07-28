/*
DESCRIPTION:
This script creates the database, and the schemas, while verifying that
there are no aother database with the same name.

WARNING:
This script deletes any database with the name 'DataWarehouse'.
*/
--Delete database with the same name (restart)
USE master;
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO
  
--Create new database
CREATE DATABASE DataWarehouse;
GO
  
--Create schemas inside new database
USE DataWarehouse;
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
