# SQL_Server_DataWarehouse
A guide to building a modern data warehouse with SQL Server, including ETL processes, Data dictionary, data modelling, and analytics with Power BI.

## Project Overview

This project involves:

1. **Data Architecture**: Designing a Modern Data Warehouse Using Medallion Architecture **Bronze**, **Silver**, and **Gold** layers.
2. **ETL Pipelines**: Extracting, transforming, and loading data from source systems into the warehouse.
3. **Data Modeling**: Developing fact and dimension tables optimized for analytical queries.
4. **Analytics & Reporting**: Creating SQL-based reports and dashboards for actionable insights on PowerBI connected to SSMS.


## Architecture

The architecture for this project follows Medallion Architecture **Bronze**, **Silver**, and **Gold** layers:

![Data Architecture](images/tech_diagram.png)

1. **Bronze Layer**: Stores raw data as-is from the source systems. Data is ingested from CSV Files into SQL Server Database.
2. **Silver Layer**: This layer includes data cleansing, standardization, and normalization processes to prepare data for analysis.
3. **Gold Layer**: Houses business-ready data modeled into a star schema required for reporting and analytics.


## Data Model

Following dimensional data modelling, Star Schema was deployed for the Sales Data mart.

![Data Model](images/data_model.png)


## Sales Analysis

MySQL Server was connected to Microsoft Power BI Desktop as source of data and the views on the gold level was loaded to BI tool and a simple dashboard for sum of cost vs categories and Sales_amount by Year.

![Data Analysis](images/Sales_dashboard.png)
