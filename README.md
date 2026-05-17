HR Analytics README & Dataset Documentation
Created By
Rupesh Kumar
Project Overview
The HR Analytics Dashboard Project is an enterprise-level analytics project developed using Python, PostgreSQL, SQL, and Power BI. The project analyzes employee attrition, workforce demographics, employee satisfaction, compensation, and HR performance trends.
Technologies Used
• Python
• Jupyter Notebook
• PostgreSQL
• pgAdmin 4
• SQL
• Power BI
• Excel
Dataset Summary
Dataset Name: HR Analytics Dataset
Dataset Type: Employee HR Dataset
Total Rows: 1470
Total Columns: 39
Dataset Columns
Attrition
Business Travel
CF_age band
CF_attrition label
Department
Education Field
emp no
Employee Number
Gender
Job Role
Marital Status
Over Time
Over18
Training Times Last Year
Age
CF_current Employee
Daily Rate
Distance From Home
Education
Employee Count
Environment Satisfaction
Hourly Rate
Job Involvement
Job Level
Job Satisfaction
Monthly Income
Monthly Rate
Num Companies Worked
Percent Salary Hike
Performance Rating
Relationship Satisfaction
Standard Hours
Stock Option Level
Total Working Years
Work Life Balance
Years At Company
Years In Current Role
Years Since Last Promotion
Years With Curr Manager
Jupyter Notebook Code
Load Excel File:

import pandas as pd
df = pd.read_excel('HR_Data.xlsx')

Get Total Rows and Columns:
print(df.shape)

Get Total Rows:
print(df.shape[0])

Get Total Columns:
print(df.shape[1])

Get Column Names:
for col in df.columns:
    print(col)

Dataset Information:
print(df.info())

Check Missing Values:
print(df.isnull().sum())

Check Duplicate Rows:
print(df.duplicated().sum())
PostgreSQL SQL Commands
Total Rows:
SELECT COUNT(*) AS total_rows FROM customer;

Total Columns:
SELECT COUNT(*) AS total_columns FROM information_schema.columns WHERE table_name='customer';

Show Column Names:
SELECT column_name FROM information_schema.columns WHERE table_name='customer';

View First 5 Rows:
SELECT * FROM customer LIMIT 5;

View Table Structure:
SELECT column_name, data_type FROM information_schema.columns WHERE table_name='customer';
Power BI Dashboard Pages
Page 1 - Executive Summary
Page 2 - Employee Demographics
Page 3 - Attrition Analysis
Page 4 - Employee Performance & Satisfaction
Page 5 - Compensation & Benefits
Key KPIs
• Total Employees
• Attrition Count
• Attrition Rate
• Active Employees
• Average Salary
• Job Satisfaction
• Work Life Balance
DAX Measures
CountEmployee = COUNTROWS('public customer')

Attrition Count = CALCULATE(COUNTROWS('public customer'),'public customer'[Attrition] = "Yes")

Attrition Rate = DIVIDE([Attrition Count],[CountEmployee]) * 100

Active Employee = [CountEmployee] - [Attrition Count]
Business Insights
• Sales department has the highest attrition.
• Overtime employees are more likely to leave.
• Salary impacts employee retention.
• Younger employees show higher turnover.
• Job satisfaction affects retention.
Conclusion
The HR Analytics Dashboard Project successfully converts raw HR employee data into meaningful business insights using enterprise-level 
