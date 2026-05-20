# Brazilian E-Commerce Data Analysis (Olist Store)

## Overview
An end-to-end data analysis project on the real-world Brazilian 
e-commerce dataset from Olist. The project covers data cleaning, 
exploratory data analysis (EDA), SQL business queries, and an 
interactive Power BI dashboard to extract meaningful business 
insights on sales, delivery performance, customer behaviour, 
and seller analysis.

---

## Dataset
- **Source:** Olist Brazilian E-Commerce Dataset (Kaggle)
- **Records:** 100,000+ orders across 2016–2018
- **Tables:** Customers, Orders, Order Items, Payments, 
  Reviews, Products, Sellers
- **Link:** https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

---

## Problem Statement
Analyze Brazilian e-commerce data to:
- Understand customer purchasing behaviour and payment trends
- Identify top performing product categories and sellers
- Evaluate delivery performance across Brazilian states
- Measure impact of delivery speed on customer satisfaction
- Build an interactive dashboard for business decision-making

---

## Project Workflow
Raw Data → Data Cleaning → EDA → Feature Engineering
→ SQL Analysis → Power BI Dashboard → Key Insights
---

## Data Cleaning & Preprocessing
- Handled missing values in reviews and product data
- Removed duplicates across all datasets
- Converted date columns to datetime format
- Dropped irrelevant and high-cardinality columns
- Applied percentile capping (10th/90th) for outlier handling
- Merged 7 tables into a single analysis-ready dataframe

---

## Exploratory Data Analysis (EDA)
- Analyzed order distribution and revenue trends over time
- Studied customer purchase patterns by state and season
- Evaluated product price and freight value distributions
- Performed RFM segmentation (Recency, Frequency, Monetary)
- Identified delivery performance patterns across states
- Correlation analysis between delivery speed and review scores

---

## SQL Analysis (MySQL)
Six business analysis areas covering 20+ queries:

- **Sales Overview** — Total revenue, monthly trends, avg order value
- **Product Analysis** — Top categories by revenue and order volume
- **Customer Analysis** — Unique customers, repeat vs one-time buyers
- **Seller Analysis** — Top sellers by revenue and review score
- **Delivery Analysis** — Avg delivery days, late delivery rate by state
- **Review Analysis** — Score distribution, delivery vs satisfaction

---

## Power BI Dashboard
Interactive 5-page dashboard built with DAX measures and 
calculated columns:

| Page | Content |
|---|---|
| Page 1 | Sales Overview — Revenue trend, payment methods, order patterns |
| Page 2 | Product & Seller Analysis — Top categories, price segments, scatter plot |
| Page 3 | Customer & Delivery Analysis — State map, delivery performance |
| Page 4 | Seller & Review Analysis — Review distribution, seller performance |
| Page 5 | Key Insights Summary — 8 findings + recommendation |

### Page 1 — Sales Overview
![Sales Overview](screenshots/page1_sales_overview.png)

### Page 2 — Product & Seller Analysis
![Product Seller](screenshots/page2_product_seller_analysis.png)

### Page 3 — Customer & Delivery Analysis
![Customer Delivery](screenshots/page3_customer_delivery_analysis.png)

### Page 4 — Seller & Review Analysis
![Seller Review](screenshots/page4_seller_review_analysis.png)

### Page 5 — Key Insights Summary
![Key Insights](screenshots/page5_key_insights_summary.png)

---

## Key Insights
- 📈 Olist generated **R$10.58M** in revenue across **99K orders** (2016–2018)
- 🚚 **90% of orders delivered early** — avg delivery time 12.76 days
- ⭐ Early deliveries score **4.2 stars vs 2.2 stars** for late deliveries
- 💳 **75% of customers** prefer Credit Card payments
- 📍 **São Paulo generates 40%** of total platform revenue
- 🛒 **Mid-range products (R$50–200)** drive 58% of total revenue
- ⚠️ Northeast states (Alagoas 21%, Maranhão 16.67%) have highest late delivery rates
- 🔴 **12.36% of reviews are 1-star** — indicating polarised customer experience

---

## Tech Stack
| Tool | Purpose |
|---|---|
| Python (Pandas, NumPy) | Data cleaning, EDA, feature engineering |
| Matplotlib, Seaborn | Data visualizations |
| MySQL | Business queries, joins, window functions |
| Power BI | Interactive dashboard, DAX measures |
| GitHub | Version control and portfolio hosting |

---

## Project Structure
Olist_Project/
├── data/
│   ├── raw/                          # Original Kaggle datasets
│   └── cleaned/
│       └── Brazilian_ecommerce_cleaned.csv
├── notebooks/
│   └── olist_eda.ipynb               # Python EDA notebook
├── sql/
│   └── olist_analysis.sql            # All SQL queries
├── powerbi/
│   └── Olist_Ecommerce_Dashboard.pbix
├── screenshots/
│   ├── page1_sales_overview.png
│   ├── page2_product_seller_analysis.png
│   ├── page3_customer_delivery_analysis.png
│   ├── page4_seller_review_analysis.png
│   └── page5_key_insights_summary.png
└── README.md
---

## Future Improvements
- Bank Customer Churn Prediction (Project 2 — In Progress)
- Walmart Sales Time Series Forecasting (Project 3 — Planned)
- Deploy churn prediction model via FastAPI + Streamlit

---

## Author
**M S Aravind**
- 📧 [Your Email]
- 💼 [LinkedIn Profile URL]
- 🐙 [GitHub Profile URL]
