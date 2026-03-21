-- Customers Table
CREATE TABLE Customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE Products (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    unit_price DECIMAL(10,2) NOT NULL
);

-- Sales Representatives Table
CREATE TABLE SalesReps (
    sales_rep_id VARCHAR(20) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100),
    office_address VARCHAR(255)
);

-- Orders Table
CREATE TABLE Orders (
    order_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20),
    sales_rep_id VARCHAR(20),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES SalesReps(sales_rep_id)
);

-- Order Details Table
CREATE TABLE OrderDetails (
    order_detail_id INT PRIMARY KEY,
    order_id VARCHAR(20),
    product_id VARCHAR(20),
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
