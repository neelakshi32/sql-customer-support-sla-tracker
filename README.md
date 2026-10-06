# 📊 Customer Support SLA Tracker (SQL & Data Analytics)

## 📌 Project Overview
This project tracks customer support ticket resolution performance, identifies Service Level Agreement (SLA) breaches, and analyzes delay patterns across issue categories using *MySQL Workbench*. 

Designed as a relational database project to evaluate support operational efficiency and provide key decision-making insights.

---

## 🛠️ Tech Stack & Tools
* *Database Management System:* MySQL Workbench
* *Language:* SQL (Data Definition, Data Manipulation, Analytical Queries)
* *Data Source:* MS Excel Dataset
* *Key Metrics:* Ticket Status, Resolution Days, SLA Breach Identification

---

## 💾 Database Schema & Structure

Database Name: support_sla_db  
Table Name: sla_tracker

| Column Name | Data Type | Key Type | Description |
| :--- | :--- | :--- | :--- |
| ticket_id | VARCHAR(20) | PRIMARY KEY | Unique Ticket Identifier |
| customer_name | VARCHAR(100) | - | Customer Name |
| issue_category | VARCHAR(50) | - | Category of Issue |
| date_received | DATE | - | Date ticket was logged |
| status | VARCHAR(20) | - | Ticket Status (Pending / Resolved) |
| resolution_time| INT | - | Resolution time in days |
| sla_status | VARCHAR(20) | - | SLA Breach Status |

---

## 🔍 Key SQL Queries & Analytics

### 1. Database & Table Creation
```sql
CREATE DATABASE support_sla_db;
USE support_sla_db;

CREATE TABLE sla_tracker (
    ticket_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(100),
    issue_category VARCHAR(50),
    date_received DATE,
    status VARCHAR(20),
    resolution_time INT,
    sla_status VARCHAR(20)
);
