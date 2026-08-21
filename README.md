# 🏦 Bank Loan Analysis Report

![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=flat&logo=powerbi&logoColor=black)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Cleaning-green?logo=pandas&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

## 🧩 Problem Statement

A financial institution needed to understand **who borrows, why they borrow, and which loans carry the most risk** — to improve lending decisions, reduce charge-offs, and optimize portfolio performance.

> *"How can the bank leverage loan data to identify risk patterns, improve approval criteria, and maximize repayment recovery?"*

---

## 💡 Key Findings

| Insight | Finding |
|---|---|
| 📋 Total Applications | **38,576** loan applications processed |
| ✅ Good Loan Rate | **86.2%** of loans are Fully Paid or Current |
| ❌ Bad Loan Rate | **13.8%** of loans Charged Off ($65.5M funded, only $37.3M recovered) |
| 💰 Total Funded | **$435.8M** funded across all loans |
| 💵 Total Received | **$473.1M** total repayments collected |
| 📈 Avg Interest Rate | **12.05%** overall average |
| ⚖️ Avg DTI | **13.33%** average debt-to-income ratio |
| 🏆 Top Loan Purpose | Debt Consolidation — **18,214 applications** ($232M funded) |

---

## 🗂️ Project Structure

```
📁 bank-loan-analysis/
│
├── 📓 data_cleaning.py                  # Python cleaning & preprocessing
├── 🗄️ bank_loan_queries.sql             # SQL analysis queries (MySQL)
├── 📊 bank_loan_dashboard.pbix          # Interactive Power BI dashboard
├── 📄 Project_Report.pdf                # Full written report
├── 📂 images/
│   ├── 🖼️ img1.png                      # Dashboard — Summary view
│   ├── 🖼️ img2.png                      # Dashboard — Overview view
│   └── 🖼️ img3.png                      # Dashboard — Details view
└── 📂 bank_loan_data.csv                # Raw dataset (38,576 rows)
```

---

## 🔧 Tools & Technologies

| Layer | Tool |
|---|---|
| Data Cleaning & EDA | Python, Pandas |
| Database & Analysis | MySQL |
| Visualization | Power BI |
| Reporting | PDF Report |

---

## 📁 Dataset Overview

- **Rows:** 38,576 loan records
- **Columns:** 24 features

| Feature Type | Columns |
|---|---|
| Loan Information | Loan Amount, Interest Rate, Installment, Term, Purpose, Grade, Sub-grade |
| Borrower Details | Annual Income, Employment Length, Home Ownership, State |
| Loan Performance | Loan Status (Fully Paid, Current, Charged Off) |
| Payment Data | Total Payment Received, Last Payment Date, Next Payment Date |
| Verification | Verification Status |

---

## 🐍 Python — Data Preparation

Performed in `data_cleaning.py`:

- **Data Loading:** Imported dataset using Pandas
- **Initial Exploration:** Used `info()` and `describe()` for structure overview
- **Date Standardization:** Converted all date fields to consistent `datetime` format
- **Data Cleaning:** Removed extra spaces; standardized categorical values
- **Feature Engineering:** Converted `emp_length` to numeric format
- **Missing Values:** Filled missing `emp_title` values with `"Unknown"`
- **Duplicate Check:** Verified no duplicate records exist
- **Data Consistency:** Standardized `purpose` column naming format
- **DB Integration:** Exported cleaned dataset to MySQL for SQL analysis

---

## 🗄️ SQL — Business Analysis

Performed in `bank_loan_queries.sql` using MySQL:

1. **Total Loan Applications** — 38,576 total | 4,314 MTD (Dec) | 4,035 PMTD (Nov)
2. **Total Funded Amount** — $435.8M total | $54.0M MTD | $47.8M PMTD
3. **Total Amount Received** — $473.1M total | $58.1M MTD | $50.1M PMTD
4. **Average Interest Rate** — 12.05% overall | 12.36% MTD | 11.94% PMTD
5. **Average DTI** — 13.33% overall | 13.67% MTD | 13.30% PMTD
6. **Good Loan Analysis** — 86.2% good rate | 33,243 applications | $370.2M funded
7. **Bad Loan Analysis** — 13.8% bad rate | 5,333 applications | $65.5M funded
8. **Loan Status Breakdown** — Grouped by Fully Paid / Charged Off / Current
9. **Monthly Trends** — Applications and funding grow steadily Jan → Dec
10. **Breakdown by State, Term, Employment, Purpose, Home Ownership**

---

## 📊 Power BI Dashboard

Interactive dashboard with three views built in `bank_loan_dashboard.pbix`:

**KPI Cards:** Total Applications (38.6K) · Total Funded ($435.8M) · Total Received ($473.1M) · Avg Interest (12.0%) · Avg DTI (13.3%)

---

### 📌 Summary View
![Dashboard Summary](images/img1.png)

*Good Loan vs Bad Loan breakdown, loan status table with MTD metrics, and top-level KPI cards.*

---

### 📌 Overview View
![Dashboard Overview](images/img2.png)

*Monthly funding trends, geographic distribution by state, loan term split (36 vs 60 months), funding by employee length, purpose, and home ownership.*

---

### 📌 Details View
![Dashboard Details](images/img3.png)

*Granular loan-level table showing ID, purpose, home ownership, grade, sub-grade, funded amount, interest rate, and installment.*

---

## 📌 Business Recommendations

**1. Tighten High-DTI Approvals**
Charged Off loans average a 14% DTI vs 13.17% for Fully Paid. Implement stricter approval thresholds for borrowers above this range.

**2. Monitor Early Warning Signals**
Build automated alerts for accounts showing repayment delays before they reach Charged Off status — recover more before write-off.

**3. Focus on Low-Risk Segments**
Prioritize borrowers with stable employment (10+ years), lower DTI, and mortgage home ownership — these groups show the strongest repayment rates.

**4. Optimize Interest Rates by Risk Profile**
Current loans carry the highest avg interest (15.10%) yet lower funding — dynamic risk-based pricing can improve portfolio yield without increasing defaults.

**5. Convert Repeat Borrowers to Better Products**
Borrowers using short-term 36-month loans ($273M funded) represent a large segment — offer refinancing or loyalty products to retain them long-term.

**6. Diversify Loan Portfolio**
Debt consolidation dominates at 47% of all applications. Reduce concentration risk by actively promoting other loan categories (small business, home improvement).

---

## 👤 Author

**Akshara Miriyala**  
Data Analyst | Python · SQL · Power BI

<p>
  <a href="https://www.linkedin.com/in/hamza-anjum-459bba320/">
    <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"/>
  </a>
  &nbsp;
  <a href="https://github.com/Hamza-227">
    <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub"/>
  </a>
  &nbsp;
  <a href="mailto:hamzaanjum650@gmail.com">
    <img src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white" alt="Email"/>
  </a>
</p>

---

*This project was completed as part of a bank loan data analysis initiative using Python, SQL, and Power BI.*
