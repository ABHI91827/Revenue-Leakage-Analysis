# 🛒 E-Commerce Funnel & Revenue Leakage Analysis

## 📌 Project Overview
This project analyzes an e-commerce dataset to identify conversion gaps, quantify revenue leakage, and uncover key drivers impacting business performance.

The objective is to understand why revenue is lost despite high order success rates and provide actionable insights to improve conversion and reduce financial loss.

---

## 🎯 Business Problem
The platform experiences revenue leakage due to failed orders, even though the majority of transactions are successful.

Key questions addressed:
- Where are orders failing?
- How much revenue is being lost?
- Which factors contribute to these failures?
- How can the business reduce revenue leakage?

---

## 📊 Dataset
- Source: Brazilian E-Commerce Public Dataset (Olist)
- Size: ~100K+ orders
- Data includes:
  - Orders
  - Customers
  - Payments
  - Order items

---

## 🛠 Tools & Technologies
- Python (Pandas, NumPy, Matplotlib)
- SQL (for querying and aggregation)
- Power BI (dashboard visualization)

---

## 🔍 Approach

1. **Data Preparation**
   - Merged multiple datasets (orders, payments, customers, items)
   - Created order-level dataset to avoid duplication
   - Engineered features like `revenue` and `order_result`

2. **Analysis**
   - Order status distribution (success vs failure)
   - Revenue loss calculation from failed orders
   - Payment method analysis
   - Root cause identification

3. **Visualization**
   - Built interactive Power BI dashboard
   - Tracked KPIs and business metrics

---

## 📈 Key Insights

- ~97% of orders are successfully delivered
- ~3% of orders fail, resulting in ~₹4.5 Lakhs revenue loss (~2.7%)

- Credit card is the most used payment method (~75% of transactions)
- It also contributes ~75% of total revenue loss

- Revenue loss is driven by:
  
  **Failure Rate × Usage Volume**

- Even small failure rates can result in significant financial impact

---

## 💡 Business Recommendations

- Improve credit card payment reliability (highest priority)
- Implement retry mechanisms for failed transactions
- Provide fallback payment options
- Monitor payment failures using dashboards
- Reduce dependency on a single payment method

---

## 📊 Dashboard

The Power BI dashboard includes:
- KPI Cards (Total Revenue, Revenue Loss, Conversion Rate)
- Order Status Distribution
- Revenue Loss by Payment Type
- Payment Method Usage
- Revenue: Success vs Failure
- Payment Type vs Order Status

---

## 📁 Project Structure
ecommerce-revenue-analysis/
│
├── ecommerce_revenue_analysis.ipynb
├── final_dataset.csv
├── analysis_queries.sql
├── ecommerce_dashboard.pbix
├── README.md

---

## 🚀 Key Outcome

This project demonstrates how small inefficiencies in high-volume operations can lead to significant financial losses and how data-driven insights can help improve conversion and business performance.

---

## 👨‍💻 Author
K Abhishek  
Data Analyst | SQL | Python | Power BI