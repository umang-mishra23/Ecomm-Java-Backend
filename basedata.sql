-- Create DB
CREATE DATABASE IF NOT EXISTS ecommjava;
USE ecommjava;

-- CATEGORY TABLE
CREATE TABLE CATEGORY (
    category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO CATEGORY(name) VALUES
('Fruits'),
('Vegetables'),
('Meat'),
('Fish'),
('Dairy'),
('Bakery'),
('Drinks'),
('Sweets'),
('Other');

-- CUSTOMER TABLE
CREATE TABLE CUSTOMER (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(255) NOT NULL,
    address VARCHAR(255)
);

-- ⚠️ IMPORTANT: password should be encoded in real project
INSERT INTO CUSTOMER(address, email, password, role, username) VALUES
('123, Albany Street', 'admin@nyan.cat', '$2a$10$dummyhashedpassword', 'ROLE_ADMIN', 'admin'),
('765, 5th Avenue', 'lisa@gmail.com', '$2a$10$dummyhashedpassword', 'ROLE_NORMAL', 'lisa');

-- PRODUCT TABLE
CREATE TABLE PRODUCT (
    product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    image VARCHAR(255),
    price INT,
    quantity INT,
    weight INT,
    category_id INT,
    customer_id INT,

    FOREIGN KEY (category_id) REFERENCES CATEGORY(category_id),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMER(id)
);

-- SAMPLE PRODUCTS
INSERT INTO PRODUCT(description, image, name, price, quantity, weight, category_id) VALUES
('Fresh and juicy', 'https://freepngimg.com/save/9557-apple-fruit-transparent/744x744', 'Apple', 3, 40, 76, 1),
('Woops! There goes the eggs...', 'https://www.nicepng.com/png/full/813-8132637_poiata-bunicii-cracked-egg.png', 'Cracked Eggs', 1, 90, 43, 9);