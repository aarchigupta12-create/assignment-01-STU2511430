-- Dimension: Date
CREATE TABLE dim_date (
    date_id DATE PRIMARY KEY,
    year INT,
    month INT,
    day INT
);

-- Dimension: Store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

-- Dimension: Product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Fact Table
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id DATE,
    store_id INT,
    product_id INT,
    quantity INT,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);








-- dim_date
INSERT INTO dim_date VALUES ('2024-01-01', 2024, 1, 1);
INSERT INTO dim_date VALUES ('2024-01-02', 2024, 1, 2);
INSERT INTO dim_date VALUES ('2024-02-01', 2024, 2, 1);

-- dim_store
INSERT INTO dim_store VALUES (1, 'Store A', 'Mumbai');
INSERT INTO dim_store VALUES (2, 'Store B', 'Delhi');
INSERT INTO dim_store VALUES (3, 'Store C', 'Bangalore');

-- dim_product (cleaned category casing)
INSERT INTO dim_product VALUES (101, 'Laptop', 'Electronics');
INSERT INTO dim_product VALUES (102, 'Shirt', 'Clothing');
INSERT INTO dim_product VALUES (103, 'Milk', 'Groceries');

-- fact_sales (at least 10 rows)
INSERT INTO fact_sales VALUES (1, '2024-01-01', 1, 101, 2, 100000);
INSERT INTO fact_sales VALUES (2, '2024-01-01', 2, 102, 5, 5000);
INSERT INTO fact_sales VALUES (3, '2024-01-02', 3, 103, 10, 1200);
INSERT INTO fact_sales VALUES (4, '2024-01-02', 1, 102, 3, 3000);
INSERT INTO fact_sales VALUES (5, '2024-02-01', 2, 101, 1, 50000);
INSERT INTO fact_sales VALUES (6, '2024-02-01', 3, 103, 8, 960);
INSERT INTO fact_sales VALUES (7, '2024-01-01', 1, 103, 6, 720);
INSERT INTO fact_sales VALUES (8, '2024-01-02', 2, 101, 2, 100000);
INSERT INTO fact_sales VALUES (9, '2024-02-01', 3, 102, 4, 4000);
INSERT INTO fact_sales VALUES (10, '2024-02-01', 1, 101, 1, 50000);

