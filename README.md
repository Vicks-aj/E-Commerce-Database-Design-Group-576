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
-  Product Setup

  Flow:
      
  Brand → Product Category → Product → Product Image
  Steps:
  1. Create a Brand:
     ```bash
     INSERT INTO brand (name) VALUES ('Nike');  
 2. Add a Product Category:
     ```bash
     INSERT INTO product_category (category_name) VALUES ('Shoes');       
  3. Add a Product:
     ```bash
     INSERT INTO product (product_name, brand_id, category_id, base_price)  
     VALUES ('Air Max', 1, 1, 120.00);  
  4. Upload Product Images:
     ```bash
     INSERT INTO product_image (product_id, image_url)  
     VALUES (1, 'https://example.com/airmax.jpg');
     
     
-  Variations & Inventory:
  
  Flow:
   
  Product → Product Variation (Color/Size) → Product Item (SKU/Stock)
  Steps:
  1. Define Colors/Sizes:
       ```bash
       INSERT INTO color (color_name) VALUES ('Red');  
       INSERT INTO size_option (size_category_id, size_value) VALUES (1, '10');
  2. Create a Variation:
        ```bash
        INSERT INTO product_variation (product_id, color_id, size_id)  
        VALUES (1, 1, 1);
  3. Track Inventory:
        ```bash
        INSERT INTO product_item (variation_id, sku, quantity_in_stock)  
        VALUES (1, 'NIKE-AIRMAX-RED-10', 50);

          
-  Attributes:
  
   Flow:

   Product → Product Attribute → Attribute Category/Type
   Steps:
   1. Add Attribute Categories/Types:
       ```bash
       INSERT INTO attribute_category (category_name) VALUES ('Material');  
       INSERT INTO attribute_type (type_name) VALUES ('Text');
   2. Assign Attributes to Products:
       ```bash
       INSERT INTO product_attribute (product_id, attribute_name, attribute_value, attribute_category_id, attribute_type_id)  
       VALUES (1, 'Upper', 'Leather', 1, 1);  

 ### 🧪 Testing the Database
Run sample queries to validate the design:
    ```bash

    ---Example: Add a Nike product
    INSERT INTO brand (name) VALUES ('Nike');
    INSERT INTO product_category (category_name) VALUES ('Shoes');
    INSERT INTO product (product_name, brand_id, category_id, base_price)
    VALUES ('Air Max', 1, 1, 150.00);


### 👏 Contributors
[Awojobi Victor Ololade] - ERD Design

[Awojobi Victor Ololade] - SQL Implementation

[Stephen] - Documentation

[Stephen] - Testing

