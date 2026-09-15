# SQL Business Analysis – New Wheels

## 📌 Problem Statement

New-Wheels, a vehicle resale company, is experiencing declining sales and customer satisfaction.
This project uses SQL to analyze business performance and identify key issues affecting growth.

---

## 🛠️ Tools Used

* SQL (Joins, Aggregations, Window Functions)

---

## 📂 SQL Queries

The SQL analysis is organized into separate scripts covering the major business questions:

| File | Analysis |
|---|---|
| `01_Customer_Analysis.sql` | Customer distribution and state-wise analysis |
| `02_Vehicle_Analysis.sql` | Vehicle maker preferences and state-wise preferences |
| `03_Customer_Feedback_Analysis.sql` | Customer ratings and feedback trends |
| `04_Quarterly_Order_Analysis.sql` | Quarterly order trends |
| `05_Revenue_Analysis.sql` | Quarterly revenue and QoQ performance |
| `06_Discount_and_Shipping_Analysis.sql` | Discount and shipping performance |
| `07_Business_Recommendations.sql` | Business recommendations based on analysis |

> **Note:** The original project report contains screenshots of queries executed in SQLite. 
> The SQL scripts provided in this repository have been adapted for MySQL Workbench 
> while preserving the original analysis and business questions.

---

## 🔍 Key Analysis

* Customer distribution across states
* Top vehicle makers by customer preference
* Quarterly revenue and order trends
* Customer feedback and satisfaction trends
* Shipping performance analysis

---

## 📊 Key Findings

* Revenue declined by over 50% across the year
* Customer satisfaction dropped from 3.55 → 2.40
* Orders decreased by ~36% from Q1 to Q4
* Shipping time increased from 57 → 174 days

---

## 💡 Business Insights

* Increasing shipping delays led to customer dissatisfaction
* Negative feedback increased significantly in later quarters
* Low repeat purchase rate (~0.6%) indicates poor customer retention

---

## 📈 Business Recommendations

* Improve logistics and reduce shipping delays
* Implement customer retention strategies
* Focus on high-demand regions and products
* Monitor key KPIs regularly

---

## 📁 Repository Structure

```text
sql-business-analysis-new-wheels/
│
├── SQL Queries/
│   ├── 01_Customer_Analysis.sql
│   ├── 02_Vehicle_Analysis.sql
│   ├── 03_Customer_Feedback_Analysis.sql
│   ├── 04_Quarterly_Order_Analysis.sql
│   ├── 05_Revenue_Analysis.sql
│   ├── 06_Discount_and_Shipping_Analysis.sql
│   └── 07_Business_Recommendations.sql
│
├── New Wheels Project.pdf
└── README.md

---

## 📁 Project Files

* `New Wheels Project.pdf` → Full SQL queries, outputs, and analysis

---

## 👤 Author

Chitranjali O.K.
