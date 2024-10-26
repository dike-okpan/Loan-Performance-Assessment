
--------------------- DATA PREPARATION -----------------------------------------------------------------

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

------------- DATA TESTING AND QUALITY CHECKS -------------------------------------

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

----------------------------- KPIs -----------------------------------------------------------------------

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

--LOAN STATUS
select loan_status,
	 count(id) as Total_Loan_Applications,
	 sum(total_payment) as Total_Amount_Received,
	 sum(loan_amount) as Total_Funded_Amount,
	 avg(int_rate)*100 as Interest_Rate,
	 avg(dti)*100 as DTI
from view_bank_loan
group by loan_status

--month-to-date
select loan_status,
	 sum(total_payment) as MTD_Total_Amount_Received,
	 sum(loan_amount) as MTD_Total_Funded_Amount
from view_bank_loan
where MONTH(issue_date)=12 and YEAR(issue_date)=2021
group by loan_status
order by 1

--MONTHLY TRENDS
select MONTH(issue_date)as Month_Number,
	DATENAME(MONTH,issue_date)as Month_Name,
	count(id) as Total_Loan_Applications,
	sum(total_payment) as Total_Amount_Received,
	sum(loan_amount) as Total_Funded_Amount
from view_bank_loan
group by MONTH(issue_date),DATENAME(MONTH,issue_date)
order by MONTH(issue_date)

--LOAN PURPOSE ANALYSIS
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

--LOAN TERM ANALYSIS
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


--HOME OWNERSHIP ANALYSIS
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

--REGIONAL ANALYSIS BY STATE WITH LOWEST APPLICATIONS
select TOP 10 
	address_state as States,
	count(id) as Total_Loan_Applications
from view_bank_loan
group by address_state
order by 2