/*

---------------------------------------------------------------------------------------
Create Database for the project and the Schemas
----------------------------------------------------------------------------------

Script Purpose:
   This script creates a new database named 'Sales_Warehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'Sales_Warehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

--Drop and recreate the 'Sales_Warehouse' Database---
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Sales_Warehouse')
BEGIN
  ALTER DATABASE Sales_Warehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE
  DROP DATABASE Sales_Warehouse
END;
GO

---Create the 'Sales_Warehouse' database--
CREATE DATABASE Sales_Warehouse
GO

USE Sales_Warehouse;
GO

---Create Schemas---
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO