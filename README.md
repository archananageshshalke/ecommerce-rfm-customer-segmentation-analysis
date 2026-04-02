🛍️ E-Commerce Customer Retention Intelligence (RFM Analysis)

📌 Business Problem

E-commerce businesses don’t fail due to lack of customers —
they fail because customers don’t return.

This project is built to answer one critical business question:

👉 Where is revenue leaking, and which customers are about to churn?

Using real-world transactional data (~93,000+ customers), this analysis uncovers hidden behavioral patterns and transforms raw data into actionable business decisions.

---

🚀 Executive Impact (Data-Backed Insights)

⚫ 87% of customers fall into “Others” segment
→ Indicates weak segmentation strategy and lack of targeted engagement

🔴 ~90% customers have frequency = 1 (one-time buyers)
→ Severe retention issue → business is heavily acquisition-dependent

🟢 Top ~3.4% customers (Champions) drive disproportionate revenue
→ Strong Pareto effect (small group generating majority value)

🟠 1,500+ high-value customers identified as “At Risk”
→ ₹4.5L+ revenue exposed to immediate churn risk

🔵 High-value but low-frequency customers detected
→ Premium users likely to silently drop off without intervention

---

⚠️ Strategic Reality

- Customer acquisition is strong, but retention is broken
- Customer Lifetime Value is not optimized
- High-value users are not being retained properly
- Revenue loss is gradual and hidden

---

🧠 Business Recommendations

🔴 Win-Back Strategy (Immediate Action)
→ Target “At Risk” customers within 30 days using personalized offers

🟢 Retention Strategy (Core Fix)
→ Implement loyalty programs and remarketing campaigns

🔵 Revenue Expansion Strategy
→ Upsell & cross-sell to Champions and Loyal Customers

⚫ Leakage Control Strategy
→ Convert one-time buyers into repeat customers

---

🛠️ End-to-End Analytics Pipeline

- 🐍 Python (Pandas) → Data Cleaning & Feature Engineering
- 🗄️ SQL (SQLite) → Business Analysis & Segmentation
- 📊 Power BI → Interactive Dashboard & Insights

---

📊 Dashboard (Decision Intelligence Layer)

✔ KPI Cards → Total Customers, Revenue, Avg Value, Repeat %, At Risk
✔ 🟢 Champions → High-value customers
✔ 🔴 At Risk → Churn-prone customers
✔ ⚫ Others → Unsegmented majority
✔ 🔵 Loyal Customers → Consistent buyers
✔ 🟠 New Customers → Recently acquired users

✔ Customer Segmentation → Donut Chart
✔ Revenue Distribution → Bar Chart
✔ Customer Behavior → Scatter Plot (Frequency vs Monetary)
✔ Interactive Filters → Slicers

---

📸 Dashboard Preview

"Dashboard Preview" (dashboard/dashboad_preview.png.png)

---

📈 Advanced SQL Analysis

- Customer segmentation distribution
- Revenue contribution by segment
- Churn risk analysis using Recency
- High-value customer identification
- Customer ranking using RANK()
- Tier segmentation using NTILE()
- VIP customer identification (Top 20%)

---

📁 Project Architecture

Ecommerce_BI_Customer_Segmentation_Project/

├── data_raw/
├── data_cleaned/
│   └── rfm_customer_data.csv

├── notebooks/
│   └── data_cleaning.ipynb

├── dashboard/
│   ├── Ecommerce_Customer_Segmentation_Dashboard.pbix
│   ├── Customer_Segmentation_Dashboard.pdf
│   └── dashboard_preview.png

├── sql/
│   └── rfm_analysis.sql

└── README.md

---

🎯 Final Outcome

✔ Identified major retention gaps affecting revenue
✔ Quantified high-risk churn segments
✔ Exposed inefficiencies in customer lifecycle
✔ Delivered actionable business strategies
✔ Built complete analytics pipeline (Python → SQL → BI)

---

👩‍💻 Author

Archana Nagesh Shalke

Aspiring Data Analyst skilled in Python, SQL, and Power BI, focused on solving real-world business problems using data.

This project demonstrates the ability to move beyond basic dashboards and deliver decision-driven insights with measurable business impact.
