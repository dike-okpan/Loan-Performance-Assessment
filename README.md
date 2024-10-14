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

Additionally, charged-off loans tend to have higher debt-to-income (DTI) ratios and interest rates. The average interest rate for charged-off loans is 13.88%, compared to 11.64% for fully paid loans. Higher DTI ratios (an average of 14%) suggest that these borrowers are more financially stretched, which could be a warning signal for future defaults.

Our current loans, which are still being repaid on time, show an even higher interest rate of 15.01%. These could either turn into future bad loans, or they could be higher-yielding successes if repayments continue on schedule. Monitoring the performance of these loans will be crucial in determining how aggressive or conservative we should be in future lending.

### Geographic Opportunities: States with Low Loan Applications

Interestingly, there are several states where we’ve seen very few loan applications. Maine, for instance, has only processed 3 applications this year, while Nebraska and Iowa each had just 5 applications. These states represent untapped markets where targeted marketing efforts could potentially drive new growth.

States with low loan applications might offer an opportunity to expand our reach, especially as we’ve seen steady growth in other regions. However, we should also consider whether these states have different economic conditions that make residents less likely to take out loans.





















