create schema Insurance;

# to export required columns from individual table
SELECT `Employee Name` AS Employee_Name,'New' AS Income_Class,`New Budget` AS Amount
FROM individual
UNION 
SELECT `Employee Name` AS Employee_Name,'Cross Sell' AS Income_Class,`Cross sell bugdet` AS Amount
FROM individual
UNION 
SELECT `Employee Name` AS Employee_Name,'Renewal' AS Income_Class,`Renewal Budget` AS Amount
FROM individual;

#to export required columns from brokerage and fees table
SELECT Account_executive,income_class,Amount FROM brokerage
UNION ALL
SELECT `Account Executive` as Account_executive,income_class,Amount FROM fees;
    
#to export required columns from invoice table
select `Account Executive`, income_class, Amount from invoice;

#to export required columns from meeting table
select `Account Executive`,global_attendees,meeting_date from meeting;

#to export required columns from opportunity table
select `Account Executive`,opportunity_name,revenue_amount,stage,product_group from opportunity;

#to export a table for income class
Select distinct income_class from fees;

#to export account exceutive list
select `Employee Name` as Account_Executive from individual
union 
select Account_Executive from brokerage
union 
select `Account Executive` as Account_Executive from invoice
union 
select `Account Executive` as Account_Executive from fees;
