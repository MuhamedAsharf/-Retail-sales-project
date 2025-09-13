# Retail-sales-ٍSQL-project 
1-Project Overview
This project provides a comprehensive, end-to-end data analysis of retail sales transactions. It showcases a complete data pipeline, from raw data ingestion to the generation of actionable business insights, using SQL Server as the primary tool. The analysis is structured to demonstrate proficiency in data cleaning, transformation, and business intelligence, ensuring a high level of data integrity and reliability throughout the process.nd the GROUP BY clause.

2-Data Cleaning and Quality Assurance: The initial phase focused on identifying and rectifying data quality issues. This involved systematically handling null values and enforcing correct data types (age, quantity, total_sale, etc.) to prepare the dataset for accurate analysis.

Data Ingestion and ETL: The raw sales data from the SQL - Retail Sales Analysis_utf .csv file was loaded into a SQL Server database. The BULK INSERT command was specifically chosen for its superior performance in handling large-scale flat file imports, establishing an efficient ETL (Extract, Transform, Load) pipeline.

Exploratory Data Analysis (EDA) & KPI Analysis: A series of sophisticated SQL queries, all documented in SQLQuery1.sql, were executed to uncover key trends and calculate critical business metrics. This analysis focused on:

Aggregated Insights: Generating summary reports on total sales and transaction counts, segmented by gender and category.

Behavioral Analysis: Categorizing transactions by time of day (Morning, Afternoon, Evening) to uncover purchasing patterns.

Customer Segmentation: Identifying and ranking the top 5 customers by total sales to recognize key revenue contributors.

Time-Series Analysis: Calculating average sales per month and identifying top-performing months in each year using Window Functions and the GROUP BY clause.
