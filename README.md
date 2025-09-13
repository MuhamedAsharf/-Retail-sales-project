# Retail-sales-project This project provides a comprehensive end-to-end data analysis of retail sales transactions, demonstrating a full data pipeline from raw data to actionable business insights. The analysis is conducted entirely within the SQL Server environment, showcasing key skills in data cleaning, transformation, and business intelligence.

Project Objectives:
Data Cleaning & Preparation: To identify and rectify data quality issues, ensuring the dataset is clean and structured for reliable analysis.
Exploratory Data Analysis (EDA): To uncover patterns, trends, and relationships within the sales data.
Key Performance Indicator (KPI) Analysis: To calculate and analyze critical business metrics, providing insights into sales performance and customer behavior.

 Data Ingestion & ETL:
The project's foundational step involved the efficient and robust ingestion of raw sales data. The dataset from the SQL - Retail Sales Analysis_utf .csv file was loaded into a SQL Server database. The BULK INSERT command was chosen as the primary method for this process, specifically for its superior performance and optimized handling of large-scale flat file imports, ensuring data integrity from source to database. This established the initial layer of our ETL (Extract, Transform, Load) pipeline.

Data Cleaning and Quality Assurance
This project's initial phase focused on ensuring data integrity. The retail_sales table underwent a rigorous cleaning and preparation process, which included:

Handling Null Values: We systematically identified and managed missing data points to prevent errors in aggregation and analysis.

Data Type Enforcement: All columns, such as age, quantity, and total_sale, were converted to their correct numerical, string, or date types. This critical step was essential for enabling accurate calculations and computations.

Advanced SQL for Business Intelligence
A series of sophisticated SQL queries, all documented in SQLQuery1.sql, were then executed to extract valuable business insights. Our analysis focused on key areas including:

Aggregated Insights: We generated summary reports on total sales and transaction counts, segmented by gender and category.

Behavioral Analysis: Transactions were categorized by time of day (Morning, Afternoon, Evening) to uncover purchasing patterns and transaction frequency.

Customer Segmentation: We identified and ranked the top 5 customers by total sales to recognize key contributors to revenue.

Time-Series Analysis: We calculated average sales per month and identified the top-performing months in each year using a combination of Window Functions and the GROUP BY clause.
