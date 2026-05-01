# UK Online Retail — Revenue & Retention Analysis

An end-to-end data analytics project analyzing over 800,000 transactions from a UK-based online gift retailer to answer the question: **"What drives revenue — and which customers keep coming back?"**

---

## Tools Used
- **Python** (Google Colab) — data cleaning and feature engineering
- **BigQuery** (SQL) — data analysis and aggregation
- **Tableau Public** — interactive dashboard
- **GitHub** — version control and project documentation

---

## Data Source
UCI Online Retail II Dataset — real transaction data from a UK-based online gift shop covering December 2009 to December 2011. Originally published by the UCI Machine Learning Repository and sourced via Kaggle.

---

## What I Did

**Phase 1 — Data Collection**
Downloaded the UCI Online Retail II dataset (~1M rows, 8 columns) from Kaggle.

**Phase 2 — Data Cleaning (Python)**
- Removed rows with null Customer IDs and cancelled orders
- Filtered out invalid quantities and prices
- Created derived columns: `TotalPrice`, `Month`, `Year`, `YearMonth`
- Renamed columns for SQL compatibility and exported clean CSV

**Phase 3 — SQL Analysis (BigQuery)**
Wrote 5 queries covering monthly revenue trends, top products by revenue, revenue by country, repeat vs one-time buyer segmentation, and average days between purchases using window functions and CTEs.

**Phase 4 — Dashboard (Tableau Public)**
Built two dashboards — one focused on revenue patterns and one focused on customer retention behavior.

---

## Key Findings

1. **Revenue peaks every November** — the holiday season consistently drives the highest monthly revenue across both years, suggesting strong seasonal demand for gift products.

2. **UK dominates revenue** — as a UK-based retailer, the vast majority of sales come from domestic customers. International revenue exists across 30+ countries but remains small, with Germany, Ireland, and the Netherlands as the strongest non-UK markets. The revenue by country map excludes the UK to better visualize the international distribution.

3. **72% of customers are repeat buyers** — the majority of the customer base returns for more than one purchase. Combined with an average of 60+ days between orders, this suggests customers are buying intentionally rather than impulsively — likely purchasing gifts for specific occasions rather than browsing regularly.

---

## Dashboard
https://public.tableau.com/views/UKOnlineRetailStore/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

<img width="1242" height="703" alt="image" src="https://github.com/user-attachments/assets/8e614eb0-99cf-475d-9854-f164789b9259" />
