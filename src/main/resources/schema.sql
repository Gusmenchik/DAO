-- schema.sql
CREATE TABLE CUSTOMERS (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    phone_number VARCHAR(20)
);

CREATE TABLE ORDERS (
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    customer_id INT REFERENCES CUSTOMERS(id),
    product_name VARCHAR(100) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL
);
