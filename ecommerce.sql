CREATE DATABASE ecommerce;
USE ecommerce;
-- Brand Table
CREATE TABLE brand (
  brand_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

-- Product Category Table
CREATE TABLE product_category (
  category_id INT AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

-- Product Table
CREATE TABLE product (
  product_id INT AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(255) NOT NULL,
  brand_id INT,
  category_id INT,
  base_price DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
  FOREIGN KEY (category_id) REFERENCES product_category(category_id)
) ENGINE=InnoDB;

-- Product Image Table
CREATE TABLE product_image (
  image_id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NULL,
  image_url VARCHAR(255) NOT NULL,
  FOREIGN KEY (product_id) REFERENCES product(product_id)
) ENGINE=InnoDB;

-- Color Table
CREATE TABLE color (
  color_id INT AUTO_INCREMENT PRIMARY KEY,
  color_name VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

-- Size Category Table
CREATE TABLE size_category (
  size_category_id INT AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

-- Size Option Table
CREATE TABLE size_option (
  size_id INT AUTO_INCREMENT PRIMARY KEY,
  size_category_id INT NOT NULL,
  size_value VARCHAR(50) NOT NULL,
  FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id),
  UNIQUE KEY unique_size (size_category_id, size_value)
) ENGINE=InnoDB;

-- Product Variation Table
CREATE TABLE product_variation (
  variation_id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NULL,
  color_id INT,
  size_id INT,
  FOREIGN KEY (product_id) REFERENCES product(product_id),
  FOREIGN KEY (color_id) REFERENCES color(color_id),
  FOREIGN KEY (size_id) REFERENCES size_option(size_id),
  CHECK (color_id IS NOT NULL OR size_id IS NOT NULL)
) ENGINE=InnoDB;

-- Product Item Table
CREATE TABLE product_item (
  item_id INT AUTO_INCREMENT PRIMARY KEY,
  variation_id INT NOT NULL,
  sku VARCHAR(50) UNIQUE NOT NULL,
  price_adjustment DECIMAL(10,2),
  quantity_in_stock INT NOT NULL,
  FOREIGN KEY (variation_id) REFERENCES product_variation(variation_id)
) ENGINE=InnoDB;

-- Attribute Category Table
CREATE TABLE attribute_category (
  attribute_category_id INT AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

-- Attribute Type Table
CREATE TABLE attribute_type (
  attribute_type_id INT AUTO_INCREMENT PRIMARY KEY,
  type_name VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

-- Product Attribute Table
CREATE TABLE product_attribute (
  attribute_id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NULL,
  attribute_name VARCHAR(255) NOT NULL,
  attribute_value VARCHAR(255) NOT NULL,
  attribute_category_id INT NOT NULL,
  attribute_type_id INT NOT NULL,
  FOREIGN KEY (product_id) REFERENCES product(product_id),
  FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id),
  FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attribute_type_id)
) ENGINE=InnoDB;