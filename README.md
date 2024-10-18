# BANK LOAN PERFORMANCE: Evaluating Interest Rates and Market Expansion

# Table of contents 

- [Objective](#objective)
	- [User story](user-story)
- [Data source](#data-source)
	- [Tools](#tools)
- [Data Cleaning, Structure and Testing](#data-cleaning-structure-and-testing)
- [Executive Summary](#executive-summary)
	- [Overview of Findings](#overview-of-findings)
- [Analysis](#analysis)
	- [Findings](#findings)
	- [Insights Deep Dive](#insights-deep-dive)
- [Recommendations](#recommendations)
	- [Action Plan](#action-plan)
	- [Further Analysis](#further-analysis)
- [Limitations](#limitations) 
- [Queries](#queries)
	- [SQL Queries](#sql-queries)
	- [Power BI DAX](#power-bi-dax)           
   
 
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

# Data Cleaning, Structure and Testing

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

### 2. Loan Health Breakdown

**Good Loans Dominate:** About 86% of the loans we’ve issued are in good standing, meaning they’re either fully paid off or current on payments. These represent 33,243 loans and $370.2 million in funded loans, with $435.8 million already paid back to us.
                                  
| Total Loan Applications | Total Funded Amount | Total Amount Received |
|-------------------------|---------------------|-----------------------|
| 33,243                  | $370,224,850        | $435,786,170          |
                                
**Bad Loans Remain Low:** Only 13% of our loans, or 5,333 loans, are considered bad (charged off, meaning they won’t be paid back). These loans totaled $65.5 million in funding, but we’ve recovered $37.3 million from them so far.

| Total Loan Applications | Total Funded Amount | Total Amount Received |
|-------------------------|---------------------|-----------------------|
| 5,333                   | $65,532,225         | $37,284,763           |


### 3. Issued Loan: What Happened to the Loans We Issued?

**Fully Paid Loans:** A total of 32,145 loans have been fully repaid, with customers paying back $411.6 million from the $351.4 million we initially funded. These loans had an average interest rate of 11.64%, which is lower than other loans.

**Charged Off Loans:** Unfortunately, 5,333 loans have been charged off, meaning we likely won’t recover the remaining balance. These loans had a higher interest rate of 13.88%, and customers have repaid $37.3 million of the $65.5 million we funded.

**Current Loans**: Right now, 1,098 loans are still being paid on time. These customers have already repaid $24.2 million of the $18.9 million we initially funded, with a higher interest rate of 15.01% on these loans.

| Loan Status | Total Loan Applications | Total Funded Amount | Total Amount Received | Interest Rate | DTI    |
|-------------|-------------------------|---------------------|-----------------------|---------------|--------|
| Fully Paid  | 32,145                  | $351,358,350        | $411,586,256          |   11.64%      | 13.17% |
| Charged Off | 5,333                   | $65,532,225         | $37,284,763           |   13.88%      | 14%    |
| Current     | 1,098                   | $18,866,500         | $24,199,914           |   15.01%      | 14.72% |

### 4. Monthly Performance Throughout the Year

Growth has been steady throughout the year, with standout months like October, where we received $49.4 million, and August, which brought in $42.7 million.

| Month      | Total Loan Applications | Total Funded Amount | Total Amount Received |
|------------|-------------------------|---------------------|-----------------------|
| January    | 2,332                   | $25,031,650         | $27,578,836           |
| Febuary    | 2,279                   | $24,647,825         | $27,717,745           | 
| March      | 2,627                   | $28,875,700         | $32,264,400           |
| April      | 2,755                   | $29,800,800         | $32,495,533           |
| May        | 2,911                   | $31,738,350         | $33,750,523           |
| June       | 3,184                   | $34,161,475         | $36,164,533           |
| July       | 3,366                   | $35,813,900         | $38,827,220           |
| August     | 3,441                   | $38,149,600         | $42,682,218           |
| September  | 3,536                   | $40,907,725         | $43,983,948           | 
| October    | 3,796                   | $44,893,800         | $49,399,567           |  
| November   | 4,035                   | $47,754,825         | $50,132,030           |
| December   | 4,314                   | $53,981,425         | $58,074,380           |

How We Performed This Month?

- December So Far: We’ve already processed 4,314 new applications, funding $54 million in loans, and collecting $58.1 million in payments this month alone.
- Compared to November: We saw a slight increase, as November’s numbers were 4,035 new applications, with $47.8 million in loans funded.

This steady upward trend signals increased demand , especially as we approach year-end. Seasonality could play a role here, as people may be seeking loans for holidays or large purchases. It will be important to monitor whether this demand continues into the new year or if we should expect a downturn.

### 5. Loan Purposes: What Customers Are Borrowing For?

Our most popular loan purpose is debt consolidation, which allows people to combine their debts into one loan. This makes up nearly half of our loan applications and bringing in $232.7 million in repayments. Other significant purposes include credit card debt refinancing, home improvement, and major purchases, all contributing millions to our overall performance.

However, we are also seeing some bad loans, especially in areas like debt consolidation, where 2,651 loans have defaulted, also small business loans, where 455 loans are no longer being repaid.

**- Top 5 Good Loan**

| Purpose            | Total Loan Applications | Total Funded Amount | Total Amount Received |
|--------------------|-------------------------|---------------------|-----------------------|
| Debt Consolidation | 15,563                  | $196,201,775        | $232,740,930          |
| Credit card        | 4,490                   | $52,192,725         | $61,163,976           | 
| Other              | 3,237                   | $26,178,925         | $30,603,991           |
| Home Improvement   | 2,549                   | $29,404,050         | $34,288,687           |
| Major Purchase     | 1,904                   | $15,337,075         | $17,632,626           |

**- Top 5 Bad Loan**

| Purpose            | Total Loan Applications | Total Funded Amount | Total Amount Received |
|--------------------|-------------------------|---------------------|-----------------------|
| Debt Consolidation | 2,651                   | $36,257,900         | $21,060,941           |
| Other              | 587                     | $4,976,825          | $2,685,685            | 
| Credit card        | 508                     | $6,692,450          | $4,050,108            |
| Small Business     | 455                     | $6,668,975          | $3,360,238            |
| Home Improvement   | 327                     | $3,946,725          | $2,092,243            |

### 6. Loan Terms & Repayment

When it comes to loan terms, most of our good loans are 36-month terms (3 years), which account for 25,214 loans and $278.1 million in repayments. These shorter-term loans are performing well, as they offer lower risk for both the borrower and the bank.

On the other hand, 60-month loans (5 years) are more common among bad loans. 2,310 bad loans were on this longer term, resulting in $36.6 million funded but less than expected repayments. This suggests that longer-term loans may carry higher risk, and we may want to focus on promoting shorter-term loans to maintain healthier cash flow.

**- Good Loan**

| Term               | Total Loan Applications | Total Funded Amount | Total Amount Received |
|--------------------|-------------------------|---------------------|-----------------------|
| 36 months          | 25,214                  | $244,132,700        | $278,129,288          |
| 60 months          | 8,029                   | $126,092,150        | $157,656,882          | 

**- Bad Loan**

| Term               | Total Loan Applications | Total Funded Amount | Total Amount Received |
|--------------------|-------------------------|---------------------|-----------------------|
| 36 months          | 3,023                   | $28,908,525         | $16,580,170           |
| 60 months          | 2,310                   | $36,623,700         | $20,704,593           |


### 7. Home Ownership Trends

Home ownership status is another critical factor in understanding loan performance.  We noticed that renters make up the largest group of good loans, with 15,752 applications and $185.3 million received, but they also account for 2,687 bad loans, which defaulted on $29 million.
Borrowers with mortgages show slightly more stability, representing 14,967 good loans and contributing $220.4 million in repayments. 

As expected, homeowners tend to have better financial health, but renters make up a larger portion of our customer base.

**- Good Loan**

| Home Ownership     | Total Loan Applications | Total Funded Amount | Total Amount Received |
|--------------------|-------------------------|---------------------|-----------------------|
| Rent               | 15,752                  | $156,777,775        | $185,261,281          |
| Mortgage           | 14,967                  | $187,581,025        | $220,409,767          | 
| Own                | 2,441                   | $25,051,725         | $29,209,159           |
| Other              | 80                      | $797,525            | $886,910              |
| None               | 3                       | $16,800             | $19,053               |

**- Bad Loan**

| Home Ownership     | Total Loan Applications | Total Funded Amount | Total Amount Received |
|--------------------|-------------------------|---------------------|-----------------------|
| Rent               | 2,687                   | $28,990,700         | $16,561,775           |
| Mortgage           | 2,231                   | $31,748,125         | $18,064,671           | 
| Own                | 397                     | $4,545,950          | $2,519,970            |
| Other              | 18                      | $247,450            | $138,347              |


### 8. Bottom 10 States with Lowest Loan Applications

Interestingly, there are states where we’ve had very few applications, such as Maine, which saw only 3 applications, and Nebraska and Iowa, each with only 5 applications. This highlights potential opportunities for future growth or marketing efforts in these regions.

| States         | Total Loan Applications |
|----------------|-------------------------|
| Maine          | 3                       |
| Nebraska       | 5                       | 
| Iowa           | 5                       |
| Idaho          | 6                       |
| Indiana        | 9                       |
| Tennessee      | 17                      |
| Mississippi    | 19                      |
| Vermount       | 54                      |
| South Dakota   | 63                      |
| Alaska         | 78                      |

## Insights Deep Dive
### Risk Management: Let's focus on Bad Loans

As mentioned, bad loans currently make up 13% of our portfolio, with some categories posing more risk than others. The small business and other loan categories have a relatively high percentage of defaults. For example, out of 455 small business loans, $6.7 million was funded, but we’ve only recovered $3.4 million. This highlights the challenge of lending to small businesses, which may face more volatile financial circumstances.

Additionally, bad loans tend to have higher debt-to-income (DTI) ratios and interest rates. The average interest rate for charged-off loans is 13.88%, compared to 11.64% for fully paid loans. Higher DTI ratios (an average of 14%) suggest that these borrowers are more financially stretched, which could be a warning signal for future defaults.

Our current loans, which are still being repaid on time, show an even higher interest rate of 15.01%. These could either turn into future bad loans, or they could be higher-yielding successes if repayments continue on schedule. Monitoring the performance of these loans will be crucial in determining how aggressive or conservative we should be in future lending.

### Geographic Opportunities: States with Low Loan Applications

There are several states where we’ve seen very few loan applications. Maine, for instance, has only processed 3 applications this year, while Nebraska and Iowa each had just 5 applications. These states represent untapped markets where targeted marketing efforts could potentially drive new growth.

States with low loan applications might offer an opportunity to expand our reach, especially as we’ve seen steady growth in other regions. However, we should also consider whether these states have different economic conditions that make residents less likely to take out loans.

# Recommendations

- Do Interest Rates Need to Change?

**No Major Changes Required:** The current loan portfolio is healthy, with most loans being repaid.Right now, the bank’s average interest rate sits at 12.05%, with minor month-to-month changes (12.36% this month vs. 11.94% last month). Most loans (86%) are performing well, meaning there’s no immediate need to raise interest rates across the board, which is good news for both the bank and its customers.

**Targeted Rate Adjustments for Riskier Borrowers and Loan Purposes:** Even though a general interest rate increase isn’t necessary, moreover, a targeted rate adjustment should be considered. For risky borrowers with higher DTI or loan purposes (like debt consolidation or small businesses) that might not be paid back easily, the bank can consider small rate increases. This way, the bank is protected from loses, and everyone else’s rate stays the same.

Additionally, target specific loan Purposes for caution for certain loan purposes, like those for debt consolidation or small businesses, have a higher percentage of defaults. This is an opportunity to adjust how we assess these borrowers and also focus on helping them succeed, such as offering financial advice or creating more tailored loan options.


- How can we improve the Low-Application States?

**Launch Targeted Campaigns:** In states like Maine, where only 3 loan applications have been made, and other states like Nebraska, Iowa, and Idaho with also very low loan application numbers, a targeted marketing campaign could draw in new customers. Offering special loan deals or slightly lower interest rates in these regions might encourage more people to apply.

**Attract Borrowers with Competitive Rates:** In these underperforming states, we can offer competitive interest rates to attract new business without taking on significant risk. Lower rates for first-time borrowers or specific loan types might encourage people to see the bank as their go-to option in these states.

### Action Plan

- Now, what steps do we take to implement the recommended decisions effectively?

1. Maintain current interest rates.
2. Implement targeted rate adjustments.
3. Offer financial advice for risky loan purposes.
4. Develop targeted marketing campaigns.
5. Introduce competitive Loan offers.
6. Monitor and evaluate performance.

### Further Analysis

Further analysis is required to fully understand the reasons for low loan application numbers in the identified states. This could be due to government lending policies that reduce the need for traditional loans; or if borrowers prefer our competitors. 
If it’s a case of our competitors outperforming us, then it will be important to find out what they’re offering that we are not. This can help us improve in the low application states.

# Limitations

# Queries

## SQL Queries

### DATA PREPARATION

```sql
select *
from bank_loan_data

create view view_bank_loan as
select id,
	address_state,
	home_ownership,
	issue_date,
	loan_status,
	purpose,
	term,
	dti,
	int_rate,
	loan_amount,
	total_payment
from bank_loan_data

select *
from view_bank_loan

```

### DATA TESTING AND QUALITY CHECKS

```sql
--- Row count test
select count(*) as Total_Rows
from view_bank_loan

--- Column count test
select count(*) as Total_Columns
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'view_bank_loan'

--- Data type check
select COLUMN_NAME,
	   DATA_TYPE
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'view_bank_loan'

--- Duplicates check
select id,
	count(*) as Duplicates
from view_bank_loan
group by id
having count(*) > 1

```

### KPIs

```sql

-- TOTAL LOAN APPLICATION
select COUNT(id) as Total_loan_application
from view_bank_loan

--Month-to-date
select COUNT(id) as MTD_Total_loan_application
from view_bank_loan
where MONTH(issue_date)=12 and YEAR(issue_date)=2021

--previous month-to-date
select COUNT(id) as PMTD_Total_loan_application
from view_bank_loan
where MONTH(issue_date)=11 and YEAR(issue_date)=2021

-- TOTAL FUNDED AMOUNT
select sum(loan_amount) as Total_Funded_Amount
from view_bank_loan

--month-to-date
select sum(loan_amount) as MTD_Total_Funded_Amount
from view_bank_loan
where MONTH(issue_date)=12 and YEAR(issue_date)=2021

--previous month-to-date
select sum(loan_amount) as PMTD_Total_Funded_Amount
from view_bank_loan
where MONTH(issue_date)=11 and YEAR(issue_date)=2021

--TOTAL AMOUNT RECEIVED
select sum(total_payment) as Total_Amount_Received
from view_bank_loan

--month-to-date
select sum(total_payment) as MTD_Total_Amount_Received
from view_bank_loan
where MONTH(issue_date)=12 and YEAR(issue_date)=2021

--previous month-to-date
select sum(total_payment) as PMTD_Total_Amount_Received
from view_bank_loan
where month(issue_date)=11 and YEAR(issue_date)=2021

--AVERAGE INTEREST RATE
select round(AVG(int_rate),4) * 100 as Avg_Interest_Rate
from view_bank_loan

--month-to-date
select round(AVG(int_rate),4) * 100 as MTD_Avg_Interest_Rate
from view_bank_loan
where MONTH(issue_date)=12 and YEAR(issue_date)=2021

--previous month-to-month
select round(AVG(int_rate),4) * 100 as PMTD_Avg_Interest_Rate
from view_bank_loan
where MONTH(issue_date)=11 and YEAR(issue_date)=2021


--AVERAGE DTI
select round(AVG(dti),4) * 100 as Avg_DTI
from view_bank_loan

--month-to-date
select round(AVG(dti),4) * 100 as MTD_Avg_DTI
from view_bank_loan
where MONTH(issue_date)=12 and YEAR(issue_date)=2021

--previuos month-to-date
select round(AVG(dti),4) * 100 as PMTD_Avg_DTI
from view_bank_loan
where MONTH(issue_date)=11 and YEAR(issue_date)=2021

```

### GOOD LOAN

```sql

--GOOD LOAN PERCENTAGE
select 
	COUNT(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id End)*100
	/
	COUNT(id) as Good_Loan_Percentage
from view_bank_loan

--GOOD LOAN APPLICTIONS
select COUNT(id) as Good_Loan_Applications
from view_bank_loan
where loan_status = 'Fully Paid' or loan_status = 'Current'

--GOOD LOAN FUNDED AMOUNT
select sum(loan_amount) as Good_Loan_Funded_Amount
from view_bank_loan
where loan_status = 'Fully Paid' or loan_status = 'Current'

--GOOD LOAN RECEIVED AMOUNT
select sum(total_payment) as Good_Loan_Received_Amount
from view_bank_loan
where loan_status = 'Fully Paid' or loan_status = 'Current'

```

### BAD LOAN

```sql

--BAD LOAN PERCENTAGE
select 
	COUNT(case when loan_status = 'Charged Off' then id End)*100
	/
	COUNT(id) as Bad_Loan_Percentage
from view_bank_loan

--BAD LOAN APPLICATIONS
select COUNT(id) as Bad_Loan_Applications
from view_bank_loan
where loan_status = 'Charged Off'

--BAD LOAN FUNDED AMOUNT
select sum(loan_amount) as Bad_Loan_Funded_Amount
from view_bank_loan
where loan_status = 'Charged Off'

--BAD LOAN RECEIVED AMOUNT
select sum(total_payment) as Bad_Loan_Received_Amount
from view_bank_loan
where loan_status = 'Charged Off'

```

### LOAN STATUS

```sql

select loan_status,
	 count(id) as Total_Loan_Applications,
	 sum(total_payment) as Total_Amount_Received,
	 sum(loan_amount) as Total_Funded_Amount,
	 avg(int_rate)*100 as Interest_Rate,
	 avg(dti)*100 as DTI
from view_bank_loan
group by loan_status

```

### LOAN PURPOSE ANALYSIS

```sql

--good loan
select Top 5 
	purpose,
	count(id) as Total_Loan_Applications,
	sum(total_payment) as Total_Amount_Received,
	sum(loan_amount) as Total_Funded_Amount
from view_bank_loan
where loan_status = 'Fully Paid' or loan_status = 'Current'
group by purpose
order by Total_Loan_Applications desc

--bad loan
select top 5
	purpose,
	count(id) as Total_Loan_Applications,
	sum(total_payment) as Total_Amount_Received,
	sum(loan_amount) as Total_Funded_Amount
from view_bank_loan
where loan_status = 'Charged Off'
group by purpose
order by Total_Loan_Applications desc

```

### LOAN TERM ANALYSIS

```sql

--good loan
select term,
	count(id) as Total_Loan_Applications,
	sum(total_payment) as Total_Amount_Received,
	sum(loan_amount) as Total_Funded_Amount
from view_bank_loan
where loan_status = 'Fully Paid' or loan_status = 'Current'
group by term

--bad loan
select term,
	count(id) as Total_Loan_Applications,
	sum(total_payment) as Total_Amount_Received,
	sum(loan_amount) as Total_Funded_Amount
from view_bank_loan
where loan_status = 'Charged Off'
group by term

```

### HOME OWNERSHIP ANALYSIS

```sql

--good loan
select home_ownership,
	count(id) as Total_Loan_Applications,
	sum(total_payment) as Total_Amount_Received,
	sum(loan_amount) as Total_Funded_Amount
from view_bank_loan
where loan_status = 'Fully Paid' or loan_status = 'Current'
group by home_ownership
order by Total_Loan_Applications desc

--bad loan
select home_ownership,
	count(id) as Total_Loan_Applications,
	sum(total_payment) as Total_Amount_Received,
	sum(loan_amount) as Total_Funded_Amount
from view_bank_loan
where loan_status = 'Charged Off'
group by home_ownership
order by Total_Loan_Applications desc

```

### REGIONAL ANALYSIS BY STATE WITH LOWEST APPLICATIONS

```sql

select Top 10 
	address_state as States,
	count(id) as Total_Loan_Applications
from view_bank_loan
group by address_state
order by 2

```

## Power BI DAX

### DATE TABLE

```sql

-- calender table
Date_table = CALENDAR(MIN(bank_loan_data[issue_date]),MAX(bank_loan_data[issue_date]))

-- Month
Month = FORMAT(Date_table[Date],"mmm") 

-- Month Number
Month Number = MONTH(Date_table[Date])

```

### KPIs

#### Total Loan Applications

```sql

-- Total Loan Applications
Total Loan Applications = COUNT(bank_loan_data[id])

-- PMTD Total Loan Applications
PMTD Total Amount Received = CALCULATE([Total Amount Received], DATESMTD(DATEADD(Date_table[Date],-1,MONTH)))

-- MTD Total Loan Applications
MTD Loan Applications = CALCULATE(TOTALMTD([Total Loan Applications],Date_table[Date]))

```

#### Total Funded Amount

```sql

-- Total Funded Amount
Total Funded Amount = SUM(bank_loan_data[loan_amount])

-- PMTD Total Funded Amount
PMTD Funded Amount = CALCULATE([Total Funded Amount], DATESMTD(DATEADD(Date_table[Date],-1,MONTH)))

-- MTD Total Funded Amount
MTD Funded Amount = CALCULATE(TOTALMTD([Total Funded Amount],Date_table[Date]))

-- MoM Total Funded Amount
MoM Funded Amount = ([MTD Funded Amount]-[PMTD Funded Amount])/[PMTD Funded Amount]

```

#### Total Amount Received

```sql

-- Total Amount Received
Total Amount Received = SUM(bank_loan_data[total_payment])

-- PMTD Total Amount Received
PMTD Total Amount Received = CALCULATE([Total Amount Received], DATESMTD(DATEADD(Date_table[Date],-1,MONTH)))

-- MTD Total Amount Received
MTD Total Amount Received = CALCULATE(TOTALMTD([Total Amount Received],Date_table[Date]))

```

#### Average Interest Rate

```sql

-- Average Interest Rate
Avg Interest Rate = AVERAGE(bank_loan_data[int_rate])

-- PMTD Average Interest Rate
PMTD Avg int Rate = CALCULATE([Avg Interest Rate], DATESMTD(DATEADD(Date_table[Date],-1,MONTH)))

-- MTD Average Interest Rate
MTD Avg int Rate = CALCULATE(TOTALMTD([Avg Interest Rate],Date_table[Date]))

-- MoM Average Interest Rate
MoM Avg int Rate = ([MTD Avg int Rate]-[PMTD Avg int Rate])/[PMTD Avg int Rate]

```

#### Average DTI

```sql

-- Average DTI
Avg DTI = AVERAGE(bank_loan_data[dti])

-- PMTD Average DTI
PMTD Avg DTI = CALCULATE([Avg DTI], DATESMTD(DATEADD(Date_table[Date],-1,MONTH)))

-- MTD Average DTI
MTD Avg DTI = CALCULATE(TOTALMTD([Avg DTI],Date_table[Date]))

-- MoM Average DTI
MoM Avg DTI = ([MTD Avg DTI]-[PMTD Avg DTI])/[PMTD Avg DTI]

```

### GOOD LOAN

```sql
/* 

Good Loan - Fully Paid, Current
Bad Loan - Charged Off

/*

-- Good Loan %
Good Loan% = (CALCULATE([Total Loan Applications], bank_loan_data[Good Loan vs Bad Loan] = "Good loan")) / [Total Loan Applications]

-- Good Loan Total Loan Applications
Good Loan Total Applications = CALCULATE([Total Loan Applications], bank_loan_data[Good Loan vs Bad Loan] = "Good Loan")

-- Good Loan Total Funded Amount
Good Loan Total Funded Amount = CALCULATE([Total Funded Amount], bank_loan_data[Good Loan vs Bad Loan] = "Good Loan")

-- Good Loan Total Amount Received
Good Loan Total Amount Received = CALCULATE([Total Amount Received], bank_loan_data[Good Loan vs Bad Loan] = "Good Loan")

```

### BAD LOAN

```sql
/* 

Good Loan - Fully Paid, Current
Bad Loan - Charged Off

/*

-- Bad Loan %
Bad Loan% = (CALCULATE([Total Loan Applications], bank_loan_data[Good Loan vs Bad Loan] = "Bad loan")) / [Total Loan Applications]

-- Bad Loan Total Loan Applications
Bad Loan Total Applications = CALCULATE([Total Loan Applications], bank_loan_data[Good Loan vs Bad Loan] = "Bad Loan")

-- Bad Loan Total Funded Amount
Bad Loan Total Funded Amount = CALCULATE([Total Funded Amount], bank_loan_data[Good Loan vs Bad Loan] = "Bad Loan")

-- Bad Loan Total Amount Received
Bad Loan Total Amount Received = CALCULATE([Total Amount Received], bank_loan_data[Good Loan vs Bad Loan] = "Bad Loan")

```















































