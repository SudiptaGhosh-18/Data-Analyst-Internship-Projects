# Data-Analyst-Internship-Projects
Cleaning and Interactive Power BI Dashboard for Raw Data.


TASK-1

My First Data Analyst Internship Project
Hi everyone! This is my project submission for Task 1 of my Data Analyst Internship. In this project, I have cleaned a raw E-commerce sales dataset using SQL and then created a beautiful dashboard in Power BI.

What I did in this project:
[https://github.com/SudiptaGhosh-18/Data-Analyst-Internship-Projects/blob/main/cleaning.sql]

Data Cleaning in SQL:
I imported the raw CSV data into my SQL database.
I found that there were many empty rows at the bottom of the sheet, so I removed them using a WHERE clause.
I used the COALESCE function to fill up blank or missing numbers with 0 and 1 so that our calculations don't break.
I created a clean SQL View so that Power BI can load the fresh data easily.
Power BI Dashboard Design:
I connected Power BI to my clean SQL view.
I designed the layout with a blue theme and added 5 KPI cards at the top.
I added a line chart to see the sales trend, bar charts for Brands and Categories, and a donut chart for Supervisors.


[https://github.com/SudiptaGhosh-18/Data-Analyst-Internship-Projects/blob/main/DAX]
DAX Measures (Formulas):
I made simple DAX measures for all card.

Project Files in this Folder:

Complete_Techno_Sales_Data-2  -[https://github.com/SudiptaGhosh-18/Data-Analyst-Internship-Projects/blob/main/Complete_Techno_Sales_Data-2.csv]
data_cleaning.sql
dax_measures.txt
LAPTOP.pbix

