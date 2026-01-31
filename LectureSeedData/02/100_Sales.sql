--#region 1. Create Table
DROP TABLE IF EXISTS Sales;
GO;

CREATE TABLE Sales (
    [Order] VARCHAR(20) NOT NULL,
    [Group] VARCHAR(50) NOT NULL,
    ProductName VARCHAR(100) NOT NULL,
    Quantity SMALLINT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    OrderDate DATETIME2 NOT NULL
);
--#endregion

--#region 2. Insert Data
INSERT INTO Sales ([Order], [Group], ProductName, Quantity, UnitPrice, OrderDate)
VALUES
    ('ORD-0001', 'Electronics', 'Quantum Communicator', 2, 4999.99, '2364-01-01'),
    ('ORD-0002', 'Electronics', 'Neural Interface Headset', 3, 1299.50, '2364-01-02'),
    ('ORD-0003', 'Furniture', 'Anti-Gravity Chair', 1, 2599.00, '2364-01-03'),
    ('ORD-0004', 'Furniture', 'Holographic Desk', 2, 3499.95, '2364-01-04'),
    ('ORD-0005', 'Electronics', 'Warp Core Mini Reactor', 1, 99999.99, '2364-01-05');
--#endregion