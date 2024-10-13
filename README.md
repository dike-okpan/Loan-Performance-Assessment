# Bank-Loan-Performance

# Objective

To analyze the bank's loan portfolio, assess the performance of good and bad loans to inform interest rate decisions, and identify the ten states with the lowest loan applications. This project will deliver actionable recommendations for effective loan management.

Insights and recommendations are provided on the following key areas: 
- Loan Status
- Good Loan
- Bad Loan
- Monthly Trends
- Loan Purpose Analysis
- Loan Term Analysis
- Home Ownership Analysis
- Regional Analysis by State

This will keep the Bank Loan Manager and the team up-to-date with the loan portfolio performance, which will help them make informed decisions about interest rate decisions and low application states.

## User story 

As the Loan Manager of the Bank, I need to assess the performance of our loan portfolio, specifically by analyzing the status of good and bad loans. This analysis will help determine whether adjustments to interest rates are necessary or if they should remain unchanged. Additionally, I require insights into the ten states with the fewest loan applications to improve our lending performance in these states. I would also like recommendations based on all the analysis to support informed decision-making.

# Data source 

What data is needed to achieve our objective?

We need data on the bank loan data that includes their: 
- ID
- DTI
- Interest Rate
- Loan Applications
- Loan Funded Amount
- Loan Received Amount
- Issue Date
- State
- Home Ownership
- Loan Status
- Purpose
- Term

Where is the data coming from? 

Bank Loan Data for 2021: The primary dataset used for this analysis is the "financial_loan.csv", containing detailed information about the loan portfolio of the bank.

## Tools 



| Tool | Purpose |
| --- | --- |
| Excel | Exploring the data and cleaning |
| SQL Server | Cleaning, testing, and analyzing the data |
| Power BI | Visualizing the data via interactive dashboards |
| GitHub | Hosting the project documentation and version control |

The data met the following criteria and constraints after cleaning:

- Only relevant columns were retained.
- All data types were appropriate for the contents of each column.
- No column contained null values, indicating complete data for all records.
- No duplicate records

Below is a table outlining the constraints on our cleaned dataset:

| Property | Description |
| --- | --- |
| Number of Rows | 38576 |
| Number of Columns | 11 |

And here is a tabular representation of schema for our cleaned dataset:

| Column Name | Data Type | Nullable |
| --- | --- | --- |
| id | int | NO |
| address_state | varchar | NO |
| home_ownership | varchar | NO |
| issue_date | date | NO |
| loan_status | varchar | NO |
| purpose | varchar | NO |
| term | varchar | NO |
| dti | float | NO |
| int_rate | float | NO |
| loan_amount | int | NO |
| total_payment | int | NO |

Data Cleaning Steps:

1. Removed unnecessary columns by only selecting the ones I need.
2. Checked for duplicate records.
3. Checked for null values.
4. Renamed columns using aliases.

# Executive Summary

### Overview of Findings

The analysis suggests no need for broad interest rate increase. Instead, interest rates can be adjusted for high-risk borrowers and loan purposes. Also, targeted campaigns or lower rates can attract customers in low-application states. This approach will keep the loan portfolio healthy without discouraging good borrowers.

# Analysis 

## Findings

- What did we find?

For this analysis, we're going to focus on the key performance metrics below to get the information we need for our bank.

Here are the key performance metrics:

1. Overview of Loan Portfolio Performance.
2. Loan Health Breakdown.
3. Issued Loan: What Happened to the Loans We Issued?
4. Monthly Performance Throughout the Year.
5. Loan Purposes: What Customers Are Borrowing For?
6. Loan Terms & Repayment.
7. Home Ownership Trends.
8. States with Lowest Loan Applications.

### 1. Overview of Loan Portfolio Performance

Our bank has processed 38,576 loan applications to date, with $435.8 million in loans funded. This is a significant achievement as we’ve also received $473.1 million in repayments, showing that we’re maintaining healthy cash flow.

| Total Loan Applications | Total Funded Amount | Total Amount Received |
|-------------------------|---------------------|-----------------------|
| 38,576                  | $435,757,075        | $473,070,933          |



















