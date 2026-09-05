# 🏢 SQL Server Data Warehouse Project

<p align="center">

![SQL Server](https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![T-SQL](https://img.shields.io/badge/T--SQL-025E8C?style=for-the-badge)
![ETL](https://img.shields.io/badge/ETL-Pipeline-blue?style=for-the-badge)
![Data Warehouse](https://img.shields.io/badge/Data-Warehouse-success?style=for-the-badge)
![GitHub](https://img.shields.io/badge/GitHub-Repository-black?style=for-the-badge&logo=github)

</p>

An end-to-end **Data Warehouse** project built using **Microsoft SQL Server**, following the **Medallion Architecture (Bronze, Silver, Gold)**. The project demonstrates how raw CRM and ERP data can be transformed into clean, analytics-ready datasets using ETL pipelines and dimensional modeling.

---

## 📖 Project Overview

This project simulates a real-world data warehousing workflow by integrating multiple source systems into a centralized analytical database.

The pipeline includes:

- Extracting CRM and ERP data
- Loading raw data into the Bronze layer
- Cleaning and transforming data in the Silver layer
- Building business-ready dimensional models in the Gold layer
- Creating a Star Schema for analytical reporting

---

## 🏛️ Architecture

![Data Architecture](docs/Data%20Architecture.png)

The project follows the **Medallion Architecture**, where data flows through three layers:

- **Bronze** – Raw data ingestion from source systems.
- **Silver** – Data cleansing, standardization, and transformation.
- **Gold** – Business-ready dimensional models optimized for reporting and analytics.

---

## 🔄 Data Flow

![Data Flow](docs/Data%20Flow%20Diagram.png)

---

## 📂 Repository Structure

```text
SQL-Server-DataWarehouse-Project
│
├── datasets/          # Source CRM & ERP datasets
├── docs/              # Architecture & design diagrams
├── scripts/
│   ├── bronze/        # Raw data ingestion
│   ├── silver/        # Data transformation
│   ├── gold/          # Analytical data models
│   └── init_database.sql
├── tests/             # Data quality checks
└── README.md
```

---

## 🛠️ Tech Stack

| Category | Technology |
|----------|------------|
| Database | Microsoft SQL Server |
| Language | T-SQL |
| IDE | SQL Server Management Studio (SSMS) |
| Architecture | Medallion Architecture |
| Modeling | Star Schema |
| Documentation | Draw.io |
| Version Control | Git & GitHub |

---

## 🚀 Getting Started

1. Clone the repository.

```bash
git clone https://github.com/Prabh-2004/SQL-Server-DataWarehouse-Project.git
```

2. Open the project in **SQL Server Management Studio**.

3. Execute the SQL scripts in the following order:

- `init_database.sql`
- Bronze Layer
- Silver Layer
- Gold Layer

---

## 📚 Concepts Demonstrated

- ETL Pipeline Design
- Data Warehousing
- Medallion Architecture
- Data Cleansing & Transformation
- Star Schema Modeling
- Fact & Dimension Tables
- SQL Best Practices
- Data Quality Validation

---

## 🙏 Acknowledgements

This project is **my implementation** of the SQL Data Warehouse project taught by **Data With Baraa**.

The course provided excellent Industry Level Working knowledge on data warehousing, ETL pipelines, dimensional modeling, and SQL Server best practices. This repository reflects my learning journey and understanding of those concepts.

A huge thank you to **Data With Baraa** for creating such high-quality educational content.

---

## 📄 License

This project is licensed under the **MIT License**.
