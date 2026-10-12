create db's : stg, dw:
---------------------------
IF NOT EXISTS (
    SELECT * FROM sys.databases WHERE name = 'retail_stg')
    BEGIN
      CREATE DATABASE retail_stg;
END;
GO

IF NOT EXISTS (
    SELECT * FROM sys.databases WHERE name = 'retail_dw')
    BEGIN
      CREATE DATABASE retail_dw;
END;
GO

create schemas: bronze_rtl,silver_rtl,gold_rtl:
---------------------------------------------------------------
USE retail_stg;

IF NOT EXISTS (
    SELECT * FROM sys.schemas WHERE name = 'bronze_rtl')  BEGIN
    EXEC('CREATE SCHEMA bronze_rtl');
END;

USE retail_dw;

IF NOT EXISTS (
    SELECT * FROM sys.schemas WHERE name = 'silver_rtl')  BEGIN
    EXEC('CREATE SCHEMA silver_rtl');
END;

IF NOT EXISTS (
    SELECT * FROM sys.schemas WHERE name = 'gold_rtl')  BEGIN
    EXEC('CREATE SCHEMA gold_rtl');
END;





