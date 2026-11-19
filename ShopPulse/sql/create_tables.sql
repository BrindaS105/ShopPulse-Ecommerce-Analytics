CREATE DATABASE IF NOT EXISTS shoppulse;

USE shoppulse;

CREATE TABLE IF NOT EXISTS sales (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10) NOT NULL,
    order_date DATE NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);