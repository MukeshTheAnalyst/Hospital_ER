# Hospital Emergency Room
### Exploratory Data Analysis using SQL

# Project Background and Overview

This repository presents an exploratory data analysis (EDA) of hospital emergency room (ER) visit data, using SQL for data cleaning, transformation, and insight generation. The project aims to uncover patterns in patient visits, wait times, and departmental referrals, providing a practical example of handling real-world, messy healthcare data.
The analysis follows a structured data science workflow—Ask, Prepare, Process, Analyze, Share, and Act—demonstrating SQL skills in data wrangling and reporting. The project highlights the importance of data quality checks and transparent documentation in healthcare analytics.

**[Hospital Emergency Room – Exploratory Data Analysis]( https://github.com/MukeshTheAnalyst/Hospital_ER/blob/main/Hospital_ER_EDA.sql)**


# Data Structure Overview

## Data Source

•	**Hospital ER Dataset**

Contains anonymized records of ER visits, including patient demographics, visit details, wait times, and referral departments.

**Files Used:**

•	Hospital-ER.xlsx — Raw ER visit data

•	Hospital_ER_EDA.sql — SQL script for data cleaning, transformation, and analysis

**Data Preparation**

•	Removed duplicates and handled missing values

•	Standardized date/time formats

•	Addressed inconsistent or incomplete entries

•	Filtered and joined data as needed for analysis

**Data Limitations**

•	Contains missing and incomplete values in several fields

•	No direct clinical outcome or diagnosis data

•	Limited demographic and geographic detail

•	Data is anonymized for privacy


# Analysis Summary

This SQL-based analysis explores trends in ER wait times, patient demographics, and departmental referrals. 

## Key findings include:

•	Wide variation in patient wait times, with some departments experiencing longer delays.

•	Most ER visits are not followed by a departmental referral.

•	Patient demographics (age, gender, race) are diverse, with no single group dominating the dataset.


# Insights Deep Dive

**1.	Wait Time Analysis**

•	Quantified Value: Average ER wait time and distribution across all visits

•	Story: Identifies periods or departments with longer wait times, highlighting potential areas for process improvement.

**2.	Admission Patterns**

•	Quantified Value: Percentage of patients admitted vs. discharged

•	Story: Reveals trends in ER utilization and admission rates.

**3.	Departmental Referrals**

•	 Quantified Value: Top referral departments and their associated wait times

•	Story: Shows which specialties receive the most ER referrals and how this affects patient flow.


# Recommendations

•	Investigate causes of long wait times in specific departments.

•	Consider targeted interventions for patient groups with consistently longer waits.

•	Enhance data collection for more detailed analysis (e.g., outcomes, reasons for visit).


# How to Use

**1. View the Analysis:**

•	Open the Hospital_ER_EDA.sql file in your SQL editor to review the full workflow, including data cleaning, analysis, and summary queries.

**2. Run the Analysis:**

•	Import the Hospital-ER.xlsx data into your SQL environment.

•	Execute the SQL script to reproduce the results and explore the dataset further.

**3. Modify for New Insights:**

•	Adjust queries or add new ones to investigate additional questions or trends.


# Author
Mukesh Shirke

**Explore the SQL script for detailed code, data cleaning steps, and the full analysis process. This project demonstrates practical SQL skills and the application of data-driven insights to real-world healthcare operations.**
