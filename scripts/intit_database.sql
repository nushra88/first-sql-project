/*
====================================================================
Create Database and Schemas
====================================================================
Script purpose :
      This script creates a new database named 'DataWarehouse' after checking if it already exists. 
      If the database exists, it is dropped and recreated. 
      Additionally, the script sets up three schemas within the database :bronze,silver and gold. Since, this database is created in Dbeaver, I had to create tables of the bronze, silver and gold schema,
      for it to be visible under schemas.

WARNING:
   Running this script will drop the entire 'DataWarehouse' database if it exists.
   All data in the database will be permanently deleted. Proceed with caution
   and ensure you have proper backups before running this script.

   Also, since this is run in Dbeaver, it doesn't recognize the GO command so you would have to execute each line seperately.
*/

-- Create Database 'DataWarehouse'

USE master;

CREATE DATABASE DataWarehouse;
USE DataWarehouse;

CREATE SCHEMA bronze;


CREATE TABLE bronze.test_table (
    id INT PRIMARY KEY,
    name NVARCHAR(50)
);
CREATE SCHEMA silver;

CREATE TABLE silver.test_table (
   id INT PRIMARY KEY,
   name NVARCHAR(50)
);
CREATE SCHEMA gold;
CREATE TABLE gold.test_table (
   id INT PRIMARY KEY,
   name NVARCHAR(50)
);
