# Retail-sales-SQL-project 
1-Project Overview

This project provides a comprehensive, end-to-end data analysis of retail sales transactions. It showcases a complete data pipeline, from raw data ingestion to the generation of actionable business insights, using SQL Server as the primary tool. The analysis is structured to demonstrate proficiency in data cleaning, transformation, and business intelligence, ensuring a high level of data integrity and reliability throughout the process.nd the GROUP BY clause.

2-Project Objectives

-Methodology and Key Processes
Data Ingestion: The project begins with the efficient ingestion of raw data from the SQL - Retail Sales Analysis_utf .csv file. The BULK INSERT command was specifically chosen for its high-performance capabilities, establishing an optimized ETL (Extract, Transform, Load) pipeline.

-Data Cleaning: A rigorous cleaning process was applied to the retail_sales table to ensure data integrity. This included handling missing values and enforcing correct data types for columns like age, quantity, and total_sale.

-Advanced Business Analysis: A series of sophisticated SQL queries, all documented in SQLQuery1.sql, were executed to extract valuable business insights. The analysis focused on:
Time-Series Analysis: Calculating average monthly sales and identifying top-performing months in each year using Window Functions and the GROUP BY clause.
Customer Segmentation: Identifying and ranking the top 5 customers by total sales to recognize key revenue contributors.
Aggregated Insights: Generating summary reports on total sales and transaction counts segmented by gender and category.
Finally, we provided aggregated insights by generating summary reports on total sales and transaction counts, meticulously segmented by gender and category, to provide a holistic view of the business.
