# Walmart Sales Analysis

This repository contains SQL scripts for analyzing sales data from Walmart stores. The analysis covers various aspects, including sales trends, customer behaviors, product performance, and revenue generation.

## Table of Contents

- [Introduction](#introduction)
- [Data Structure](#data-structure)
- [SQL Files](#sql-files)
- [Procedure](#procedure)
- [Results](#results)


## Introduction

The Walmart Sales Analysis project aims to provide insights into the company's sales data by leveraging SQL queries. The analysis focuses on extracting valuable information from the sales dataset, enabling data-driven decision-making and strategy optimization.

## Data Structure

The sales data is stored in a MySQL database named `WalmartSales`. The database contains a single table named `sales` with the following columns:

- `invoice_id`: The unique identifier for each sales transaction.
- `branch`: The code representing the branch where the sale occurred.
- `city`: The city where the branch is located.
- `customer_type`: The type of customer (e.g., member, normal).
- `gender`: The gender of the customer.
- `product_line`: The product line or category of the purchased item.
- `unit_price`: The price of a single unit of the product.
- `quantity`: The quantity of units purchased.
- `VAT`: The value-added tax applied to the sale.
- `total`: The total amount of the sale.
- `date`: The date of the sale.
- `time`: The time of the sale.
- `payment_method`: The payment method used by the customer.
- `cogs`: The cost of goods sold for the transaction.
- `gross_margin_percentage`: The gross margin percentage for the transaction.
- `gross_income`: The gross income generated from the sale.
- `rating`: The rating provided by the customer for the transaction.
- `time_of_day`: The time of day when the sale occurred (morning, afternoon, or evening).
- `day_name`: The day of the week when the sale occurred.
- `month_name`: The month in which the sale occurred.


## SQL Files

The repository contains the following SQL files:

1. `walmart_table_create.sql`: This file creates the `WalmartSales` database and the `sales` table. It also includes the SQL queries used for feature engineering, such as adding columns for `time_of_day`, `day_name`, and `month_name`.

2. `Sales-And-Customer-Analysis.sql`: This file contains SQL queries focused on analyzing sales trends, customer behaviors, and customer-related metrics.

3. `generic_product_analysis.sql`: This file includes SQL queries for analyzing product performance, revenue generation, and other general aspects of the sales data.

## Procedure

The analysis follows these general steps:

1. **Data Preparation**: Create the `WalmartSales` database and the `sales` table using the `walmart_table_create.sql` script. This script also includes queries for feature engineering, such as adding columns for `time_of_day`, `day_name`, and `month_name`.

2. **Data Loading**: Import the sales data into the `sales` table.

3. **Analysis Execution**: Open the `Sales-And-Customer-Analysis.sql` and `generic_product_analysis.sql` files and execute the SQL queries to analyze various aspects of the data.

4. **Result Interpretation**: Interpret the query results to gain insights into sales trends, customer behaviors, product performance, revenue generation, and other relevant metrics.

## Results

The SQL queries in this repository provide valuable insights into the Walmart sales data. Some key findings include:

- Identification of peak sales hours and days of the week, which can inform staffing and inventory management decisions.
- Analysis of customer types and demographics, enabling targeted marketing strategies and tailored product offerings.
- Evaluation of product line performance, including top-selling products and revenue contribution, guiding inventory planning and product mix optimization.
- Insights into payment method preferences and regional sales trends, informing strategies for payment processing and regional market expansion.
- Analysis of customer ratings and feedback, enabling continuous improvement in customer experience and product quality.

These results can be further explored and visualized using data visualization tools or business intelligence platforms.

