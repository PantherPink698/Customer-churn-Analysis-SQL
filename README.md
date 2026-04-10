#  Customer Churn Analysis (SQL + Python)

##  Overview

This project analyzes customer churn behavior using **MySQL and Python** to identify key factors affecting retention and provide actionable business insights.

The dataset consists of **9,798 customer records** with demographic, behavioral, and subscription-related features.

---

##  Objective

* Analyze customer churn patterns
* Identify key drivers of churn
* Provide data-driven business recommendations

---

##  Tools & Technologies

* **MySQL** – Data querying and aggregation
* **Python (Pandas, NumPy)** – Data analysis


---

##  Dataset Features

* CustomerID
* Age, Gender
* Tenure, Usage Frequency
* Support Calls, Payment Delay
* Subscription Type, Contract Length
* Total Spend, Last Interaction
* **Churn (Target Variable)**

---

##  Key Insights

###  Churn Overview

* Total Customers: **9,798**
* Churned Customers: **2,572**
* **Churn Rate: 26.25%**

Approximately **1 in 4 customers is leaving**

---

###  Subscription Type Analysis

| Subscription Type | Churn Rate |
| ----------------- | ---------- |
| Basic             | 27.55%     |
| Standard          | 26.03%     |
| Premium           | 25.28%     |

 Higher-tier plans show **better customer retention**

---

###  Contract Length Analysis

| Contract Length | Churn Rate |
| --------------- | ---------- |
| Monthly         | 30.38%     |
| Annual          | 25.31%     |
| Quarterly       | 23.12%     |

 Customers on **monthly plans churn the most**

---

##  Key Findings

* Customers with **short-term contracts** are more likely to churn
* Higher-value subscription plans improve retention
* Churn is predictable using behavioral and subscription patterns

---

##  Business Recommendations

* Promote **long-term subscription plans**
* Encourage **upgrades to premium tiers**
* Improve onboarding for new customers
* Monitor customers with high support calls and payment delays

---

##  Sample SQL Query

```sql
SELECT 
    `Subscription Type`,
    COUNT(*) AS total,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS churned,
    ROUND(SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS churn_rate
FROM customers
GROUP BY `Subscription Type`;
```

---

##  Project Structure

```
Customer-Churn-Analysis/
│── data/
│── sql/
│── python/
│── visuals/
│── README.md
```

---

##  Conclusion

Customer churn is not random — it is driven by identifiable patterns such as contract type and subscription level. Strategic interventions can significantly improve retention.

---

##  Author

PantherPink
Aspiring Data Analyst | SQL | Python | Data Visualization
