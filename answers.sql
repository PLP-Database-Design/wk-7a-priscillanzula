-- CREATE DATABASE nzulashopdb;
USE nzulashopdb;

-- Question 1

-- Create a new table in 1NF
CREATE TABLE ProductsDetails (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100),
    PRIMARY KEY (OrderID, Product)
);

-- Insert data 
-- For OrderID 101 - John Doe
INSERT INTO ProductsDetails (OrderID, CustomerName, Product)
VALUES (101, 'John Doe', 'Laptop');

INSERT INTO ProductsDetails (OrderID, CustomerName, Product)
VALUES (101, 'John Doe', 'Mouse');

-- For OrderID 102 - Jane Smith
INSERT INTO ProductsDetails (OrderID, CustomerName, Product)
VALUES (102, 'Jane Smith', 'Tablet');

INSERT INTO ProductsDetails(OrderID, CustomerName, Product)
VALUES (102, 'Jane Smith', 'Keyboard');

INSERT INTO ProductsDetails (OrderID, CustomerName, Product)
VALUES (102, 'Jane Smith', 'Mouse');

-- For OrderID 103 - Emily Clark
INSERT INTO ProductsDetails (OrderID, CustomerName, Product)
VALUES (103, 'Emily Clark', 'Phone');


-- Question 2
-- Create a new table in 2NF
-- Create Orders table to store order information
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Create OrderProducts table to store products information for each order
CREATE TABLE OrderProducts (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert data 
INSERT INTO Orders (OrderID, CustomerName)
VALUES 
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Emily Clark');

-- Insert data into the OrderProducts table
INSERT INTO OrderProducts (OrderID, Product, Quantity)
VALUES
    (101, 'Laptop', 2),
    (101, 'Mouse', 1),
    (102, 'Tablet', 3),
    (102, 'Keyboard', 1),
    (102, 'Mouse', 2),
    (103, 'Phone', 1);
    
   
