-- A. SUMMARY KPIs
-- Total Loan Applications
-- Overall

SELECT COUNT(id) AS Total_Applications 
FROM bank_loan_data;

-- MTD (Month to Date - December)
SELECT COUNT(id) AS MTD_Total_Applications 
FROM bank_loan_data 
WHERE MONTH(issue_date) = 12;

-- PMTD (Previous Month - November)
SELECT COUNT(id) AS PMTD_Total_Applications 
FROM bank_loan_data 
WHERE MONTH(issue_date) = 11;

-- Total Funded Amount
-- Overall
SELECT SUM(loan_amount) AS Total_Funded_Amount 
FROM bank_loan_data;

-- MTD
SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data 
WHERE MONTH(issue_date) = 12;

-- PMTD
SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount 
FROM bank_loan_data 
WHERE MONTH(issue_date) = 11;

-- Total Amount Received
-- Overall
SELECT SUM(total_payment) AS Total_Amount_Received 
FROM bank_loan_data;

-- MTD
SELECT SUM(total_payment) AS MTD_Total_Amount_Received 
FROM bank_loan_data 
WHERE MONTH(issue_date) = 12;

-- PMTD
SELECT SUM(total_payment) AS PMTD_Total_Amount_Received 
FROM bank_loan_data 
WHERE MONTH(issue_date) = 11;

-- Average Interest Rate
-- Overall
SELECT AVG(int_rate) * 100 AS Avg_Int_Rate 
FROM bank_loan_data;

-- MTD
SELECT AVG(int_rate) * 100 AS MTD_Avg_Int_Rate 
FROM bank_loan_data 
WHERE MONTH(issue_date) = 12;

-- PMTD
SELECT AVG(int_rate) * 100 AS PMTD_Avg_Int_Rate 
FROM bank_loan_data 
WHERE MONTH(issue_date) = 11;

-- Average DTI
-- Overall
SELECT AVG(dti) * 100 AS Avg_DTI 
FROM bank_loan_data;

-- MTD
SELECT AVG(dti) * 100 AS MTD_Avg_DTI 
FROM bank_loan_data 
WHERE MONTH(issue_date) = 12;

-- PMTD
SELECT AVG(dti) * 100 AS PMTD_Avg_DTI 
FROM bank_loan_data 
WHERE MONTH(issue_date) = 11;

-- GOOD LOAN vs BAD LOAN
-- Good Loan
-- Percentage
SELECT
    (COUNT(CASE WHEN loan_status IN ('Fully Paid', 'Current') THEN id END) * 100.0) /
    COUNT(id) AS Good_Loan_Percentage
FROM bank_loan_data;

-- Applications
SELECT COUNT(id) AS Good_Loan_Applications 
FROM bank_loan_data 
WHERE loan_status IN ('Fully Paid', 'Current');

-- Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount 
FROM bank_loan_data 
WHERE loan_status IN ('Fully Paid', 'Current');

-- Amount Received
SELECT SUM(total_payment) AS Good_Loan_Amount_Received 
FROM bank_loan_data 
WHERE loan_status IN ('Fully Paid', 'Current');

-- Bad Loan
-- Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) /
    COUNT(id) AS Bad_Loan_Percentage
FROM bank_loan_data;

-- Applications
SELECT COUNT(id) AS Bad_Loan_Applications 
FROM bank_loan_data 
WHERE loan_status = 'Charged Off';

-- Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount 
FROM bank_loan_data 
WHERE loan_status = 'Charged Off';

-- Amount Received
SELECT SUM(total_payment) AS Bad_Loan_Amount_Received 
FROM bank_loan_data 
WHERE loan_status = 'Charged Off';

-- LOAN STATUS BREAKDOWN
-- Full breakdown
SELECT
    loan_status,
    COUNT(id)            AS Loan_Count,
    SUM(total_payment)   AS Total_Amount_Received,
    SUM(loan_amount)     AS Total_Funded_Amount,
    AVG(int_rate * 100)  AS Avg_Interest_Rate,
    AVG(dti * 100)       AS Avg_DTI
FROM bank_loan_data
GROUP BY loan_status;

-- MTD breakdown
SELECT
    loan_status,
    SUM(total_payment) AS MTD_Total_Amount_Received,
    SUM(loan_amount)   AS MTD_Total_Funded_Amount
FROM bank_loan_data
WHERE MONTH(issue_date) = 12
GROUP BY loan_status;

-- By Month
SELECT
    MONTH(issue_date)       AS Month_Number,
    MONTHNAME(issue_date)   AS Month_Name,
    COUNT(id)               AS Total_Loan_Applications,
    SUM(loan_amount)        AS Total_Funded_Amount,
    SUM(total_payment)      AS Total_Amount_Received
FROM bank_loan_data
GROUP BY MONTH(issue_date), MONTHNAME(issue_date)
ORDER BY MONTH(issue_date);

-- By State
SELECT
    address_state           AS State,
    COUNT(id)               AS Total_Loan_Applications,
    SUM(loan_amount)        AS Total_Funded_Amount,
    SUM(total_payment)      AS Total_Amount_Received
FROM bank_loan_data
GROUP BY address_state
ORDER BY address_state;

-- By Term
SELECT
    term                    AS Term,
    COUNT(id)               AS Total_Loan_Applications,
    SUM(loan_amount)        AS Total_Funded_Amount,
    SUM(total_payment)      AS Total_Amount_Received
FROM bank_loan_data
GROUP BY term
ORDER BY term;

-- By Employee Length
SELECT
    emp_length              AS Employee_Length,
    COUNT(id)               AS Total_Loan_Applications,
    SUM(loan_amount)        AS Total_Funded_Amount,
    SUM(total_payment)      AS Total_Amount_Received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length;

-- By Purpose
SELECT
    purpose                 AS Purpose,
    COUNT(id)               AS Total_Loan_Applications,
    SUM(loan_amount)        AS Total_Funded_Amount,
    SUM(total_payment)      AS Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY purpose;

-- By Home Ownership
SELECT
    home_ownership          AS Home_Ownership,
    COUNT(id)               AS Total_Loan_Applications,
    SUM(loan_amount)        AS Total_Funded_Amount,
    SUM(total_payment)      AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY home_ownership;
