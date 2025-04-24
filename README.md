# E-Commerce-Database-Design-Group-576

## 📖 Overview
This project is a collaborative effort to design and implement a relational database for an e-commerce platform. It includes an **Entity-Relationship Diagram (ERD)** and a MySQL schema with tables for products, variations, attributes, brands, and more. Built as part of a group assignment, this repository demonstrates teamwork in database design, SQL implementation, and documentation.

## 🚀 Features
- **ERD Design**: Visual representation of 12+ tables and their relationships.
- **MySQL Schema**: Ready-to-use SQL script for database creation.
- **Data Flow**: Clear mapping of how entities interact (e.g., product → variation → inventory).
- **Scalable Structure**: Supports product variations (size/color), attributes, and categories.

## 📂 Project Structure
ecommerce-db/

├── ERD/ # ERD files (PDF/PNG)

│ └── ecommerce_erd.png

├── sql/ # SQL scripts

│ └── ecommerce.sql


├── README.md # This file

└── .gitignore # Ignore unnecessary files



## 🛠️ Tools & Technologies
- **ERD Design**: [dbdiagram.io](https://dbdiagram.io)
- **Database**: MySQL
- **Collaboration**: GitHub, Google Meet
- **Documentation**: Markdown



## 🚨 Getting Started

### Prerequisites
- MySQL Server (8.0+ recommended)
- MySQL Workbench or command-line access
- Git/GitHub account

---

## 🛠️ Tools & Technologies
- **ERD Design**: [dbdiagram.io](https://dbdiagram.io)
- **Database**: MySQL
- **Collaboration**: GitHub, Zoom/Google Meet
- **Documentation**: Markdown

---

## 🚨 Getting Started

### Prerequisites
- MySQL Server (8.0+ recommended)
- MySQL Workbench or command-line access
- Git/GitHub account

### Installation
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourgroup/repo.git
   cd ecommerce-db
   Create the Database:
2. **Create the Database**:
   ```bash
   -- Via MySQL Command Line:
   mysql -u [username] -p
   CREATE DATABASE ecommerce;
   USE ecommerce;
   SOURCE sql/ecommerce.sql;

### 🔄 Data Flow
Product Setup: 
Brand → Product Category → Product → Product Image

Variations & Inventory:
Product → Product Variation (Color/Size) → Product Item (SKU/Stock)

Attributes:
Product → Product Attribute → Attribute Category/Type

 ### 🧪 Testing the Database
Run sample queries to validate the design:
---Example: Add a Nike product
INSERT INTO brand (name) VALUES ('Nike');
INSERT INTO product_category (category_name) VALUES ('Shoes');
INSERT INTO product (product_name, brand_id, category_id, base_price)
VALUES ('Air Max', 1, 1, 150.00);


### 👏 Contributors
[Name 1](GitHub Profile Link) - ERD Design

[Name 2](GitHub Profile Link) - SQL Implementation

[Name 3](GitHub Profile Link) - Documentation

[Name 4](GitHub Profile Link) - Testing


###📜 License
This project is licensed under the MIT License. See LICENSE for details.
