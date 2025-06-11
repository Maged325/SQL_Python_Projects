# 🧠 HR Analytics SQL Project

This project showcases an **HR analytics report** built using **Microsoft SQL Server**. It analyzes employee data from a fictional company to extract actionable insights in areas like **hiring**, **leave management**, and **employee satisfaction**.

---

## 📊 Key Insights & Metrics

### 🔹 Hiring & Onboarding

- ✅ Most effective hiring source (LinkedIn, referrals, etc.)
- 📈 Headcount growth over time
- 🏢 Hiring trends by department and job title

### 🔹 Sick Leave Analysis

- 🧮 Average sick leave days per employee
- ⚠️ Most common sick leave reasons
- 🔍 Employees with high sick leave (potential burnout)
- 📅 Seasonal trends in leave requests

### 🔹 Leave Balances

- ⏳ Employees with low or zero leave balances
- 📊 Annual vs. sick leave balance trends
- 🧭 Balance distribution across departments

### 🔹 Employee Satisfaction

- 😊 Average satisfaction score across all surveys
- 🏬 Satisfaction trends by department or job title
- ❗ Employees with consistently low satisfaction (attrition risk)

---

## 🗂️ File Structure

```plaintext
📁 HR_Analytics_SQL
├── 📁 Data                  # Contains all raw CSV files
│   ├── Employees.csv
│   ├── Balances.csv
│   ├── Hiring.csv
│   ├── Satisfaction.csv
│   └── SickLeaves.csv
│
├── 📁 Exports               # Exported HTML versions of Jupyter Notebooks
│   └── HR_Visual_Report.html
│
├── 📁 Notebooks             # Python Jupyter Notebook files for visual analysis
│   └── HR_Visual_Report.ipynb
│
├── 📁 SQL                   # SQL scripts for DB setup and insights
│   ├── Create_Tables.sql
│   ├── Bulk_Insert.sql
│   └── HR_Insights_Report.sql
│
├── README.md               # Project overview and documentation
```

---

## 🛠️ Tools & Technologies

* **Microsoft SQL Server** — for data querying and report generation
* **SQL** — using JOINs, GROUP BY, aggregation, and date formatting
* **CSV files** — raw data input
* **Python** — for data visualization using Pandas, Matplotlib & Seaborn

---



## 🚀 How to Use

1. Open `Create_Tables.sql` in **SQL Server Management Studio (SSMS)** to create all necessary tables.
2. Open `Bulk_Insert.sql` and update file paths to match your local CSV file locations.
3. Run `Bulk_Insert.sql` to insert the data from CSV files into the database.
4. Open `HR_Insights_Report.sql` and run each section of SQL queries to generate insights and reports.
5. Analyze results and apply filters or tweaks as needed.
6. Open `HR_Visual_Report.html` to view visualizations built with **Matplotlib** and **Seaborn**,
   or open `HR_Visual_Report.ipynb` in **Jupyter Notebook** to interactively explore and edit the visual analysis.

---



## 🤝 **Connect with Me**

🔗 [LinkedIn – Maged Fouad](https://www.linkedin.com/in/mfouadmohamed325/)
--------------------------

---
