# Brazilian E-commerce Data Analysis (Olist)

## Overview
This project analyzes a real-world Brazilian e-commerce dataset (Olist) to extract meaningful business insights related to customer behavior, order trends, payments, and delivery performance.

The project focuses on **data cleaning, exploratory data analysis (EDA), and SQL-based relational analysis** to prepare the dataset for business intelligence and decision-making.

---

## Dataset
- Source: Olist Brazilian E-commerce Dataset (Kaggle)
- Records: 100,000+ orders
- Multiple relational tables:
  - Customers
  - Orders
  - Order Items
  - Payments
  - Reviews
  - Products
  - Sellers
Link:https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

---

## Problem Statement
Analyze e-commerce data to:
- Understand customer purchasing behavior
- Identify delivery performance issues
- Analyze payment trends
- Prepare clean data for reporting and visualization

---

## Data Cleaning & Preprocessing
- Handled missing values in reviews and product data
- Removed duplicates across datasets
- Converted date columns to datetime format
- Dropped irrelevant and high-cardinality columns
- Ensured data consistency and quality

---

## Exploratory Data Analysis (EDA)
- Analyzed order distribution over time
- Studied customer purchase patterns
- Evaluated product price and freight distributions
- Identified outliers using IQR method
- Performed statistical analysis (mean, median, mode)

---

## SQL-Based Analysis
- Performed joins across multiple tables:
  - Orders ↔ Customers
  - Orders ↔ Payments
  - Orders ↔ Order Items
- Extracted insights such as:
  - Total revenue trends
  - Customer order frequency
  - Payment type distribution
  - Delivery delays analysis

---

## Key Insights
- Majority of customers prefer specific payment methods (e.g., credit cards)
- Delivery delays impact customer satisfaction significantly
- Certain product categories generate higher revenue
- Repeat customers contribute significantly to total sales

---

## Tech Stack
- Python (Pandas, NumPy)
- SQL (MySQL-style queries)
- Matplotlib, Seaborn (Visualization)

---

## Sample Visualizations

---

## Future Improvements
- Build Power BI dashboard for visualization
- Apply predictive models (customer segmentation, churn)
- Automate data pipeline

---

## Author
**M S Aravind**
