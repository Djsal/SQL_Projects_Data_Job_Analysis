# SQL_Projects_Data_Job_Analysis

📊 Data Analyst Job Market Analysis (SQL)

## 📌 Introduction

This project analyzes the Data Analyst job market using SQL to uncover insights about in-demand skills, salary trends, and job locations.

The goal of this project is to strengthen SQL skills while answering practical business questions relevant to aspiring data analysts.

SQL queries are in this folder [project_sql](/SQL_projects/)

## 📖 Background

With the rapid growth of data-driven roles, understanding which skills are most valuable and how they impact salaries is critical for career planning.

This project focuses on:

Data Analyst roles

Jobs located in Massachusetts or remote (“Anywhere”)

Roles with non-null salary data

By analyzing job postings, we identify which technical skills are:

Most in demand

Associated with higher average salaries

## 🛠️ Tools I Used

SQL – Core querying and analysis

PostgreSQL – Database management system

VS Code – Writing and running SQL scripts

Git & GitHub – Version control and project documentation

## 🔍 The Analysis

The analysis was broken into multiple steps using CTEs (Common Table Expressions):

1️⃣ Skill Demand Analysis

Joined job postings with skill tables

Counted how often each skill appears in Data Analyst job listings

Identified the most in-demand skills

2️⃣ Average Salary by Skill

Calculated average salaries for jobs requiring each skill

Focused only on roles with reported salary data

3️⃣ Demand vs Salary Comparison

Combined demand and salary data

Ranked skills by:

Average salary

Demand count

This approach highlights high-paying AND high-demand skills, which are most valuable in the job market.

## 📚 What I Learned

Through this project, I learned how to:

Use JOINs across multiple tables effectively

Write and structure CTEs for readable, modular SQL

Apply GROUP BY correctly with aggregate functions

Filter real-world data using business logic

Translate raw data into career-relevant insights

Debug common SQL errors (missing commas, grouping issues, aliasing)

## ✅ Conclusions

Key takeaways from the analysis:

Certain technical skills command higher average salaries

High-demand skills are not always the highest-paying

Combining demand and salary analysis provides better career insights than looking at either alone

SQL is a powerful tool for real-world labor market analysis

This project demonstrates practical SQL skills that are directly applicable to Data Analyst and Business Intelligence roles.
