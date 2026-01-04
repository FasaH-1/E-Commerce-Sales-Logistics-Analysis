# Olist Brazil E-Commerce Analysis

## Business Intelligence & Data Analytics Project


### 📌 Project Overview

This project analyzes the Olist Brazil E-Commerce dataset to uncover insights related to sales performance, product categories, customer behavior, seller contribution, and logistics operations. The objective is to transform raw transactional data into validated and reliable insights that support data-driven decision-making.

The project focuses on SQL-based data modeling, data validation, and dashboard design, ensuring insights are accurate, consistent, and suitable for executive reporting.

### 🎯 Business Problem

Management lacks a unified analytical view due to fragmented transactional data. Key challenges include:

Limited visibility into overall sales and revenue performance

Difficulty identifying revenue-driving products and categories

Unclear customer purchasing and payment behavior

High dependency on top-performing sellers

Limited transparency into delivery delays and logistics performance

### ✅ Project Objectives

Build a centralized analytical view model from multiple relational tables

Analyze performance across sales, products, customers, sellers, and logistics

Validate trends to distinguish real business signals from data artifacts

Develop an interactive dashboard for management-level analysis

### 🧩 Data Model & Relationships

The project integrates multiple relational tables into a single analytical layer:

Customers → Orders (1 : N)

Orders → Order Items (1 : N)

Products → Product Categories (N : 1)

Sellers → Order Items (1 : N)

Orders → Payments (1 : N)

Orders → Delivery & Reviews (1 : 1)

All relationships are implemented using SQL JOIN operations to ensure data integrity and metric consistency.

### 🛠 Tools & Technologies

SQL – Data extraction, joins, analytical views, and data validation

Google BigQuery – Data warehouse and query processing

Google Looker Studio – Dashboard development and visualization

CSV Dataset – Raw Olist transactional data

### 🗃 Data Processing Flow

Combine raw tables into a master analytical view

Validate data completeness and time coverage

Create derived metrics (revenue, AOV, delivery duration, delay indicators)

Cross-check trends across multiple dimensions

Present insights through structured dashboards

### 📊 Key Insights

The business operates at a stable and mature scale

Revenue is concentrated in a small number of product categories

High order volume does not always correspond to high revenue

Customer payments are dominated by credit cards

Seller contribution is highly concentrated among top sellers

Delivery delays are more frequent in bulky product categories

Revenue decline in late 2018 is caused by dataset cut-off, not performance drop

### 🧠 What I Learned

This project strengthened my skills in view-based data modeling, advanced SQL analysis, data validation, and dashboard design. I learned how to validate time-series data, cross-check metrics across dimensions, and design dashboards that prioritize clarity, structure, and business relevance.

### 🔗 Links & Contact

This project includes an interactive dashboard for e-commerce performance analysis.

🔗 Dashboard : https://lookerstudio.google.com/reporting/b3819801-46c1-49a4-adf5-3a5ca5ddec83

🔗 LinkedIn : https://www.linkedin.com/in/fadliansyahrahman/

📩 Email : fadliansyahfadel01@gmail.com
