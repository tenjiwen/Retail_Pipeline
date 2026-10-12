create destination DB - retail_dest
-----------------------------------------------
IF NOT EXISTS (
    SELECT * FROM sys.databases WHERE name = 'retail_dest')
    BEGIN
      CREATE DATABASE retail_dest;
END;
GO

destination table (to host source file)
==============
CREATE TABLE retail_dest (
    [Transaction ID] varchar(50),
    [Date] varchar(50),
    [Customer ID] varchar(50),
    [Gender] varchar(50),
    [Age] varchar(50),
    [Product Category] varchar(50),
    [Quantity] varchar(50),
    [Price per Unit] varchar(50),
    [Total Amount] varchar(50)
)