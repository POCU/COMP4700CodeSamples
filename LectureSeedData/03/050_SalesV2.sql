--#region 1. Create Table
DROP TABLE IF EXISTS Sales;
DROP TABLE IF EXISTS SalesArchive;
GO

CREATE TABLE Sales (
    Username VARCHAR(20) NOT NULL,
    OrderID VARCHAR(20) NOT NULL,
    [Group] VARCHAR(50) NOT NULL,
    ProductName VARCHAR(100) NOT NULL,
    Quantity SMALLINT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    CreatedDateTime DATETIME2 NOT NULL
);

CREATE TABLE SalesArchive (
    Username VARCHAR(20) NOT NULL,
    OrderID VARCHAR(20) NOT NULL,
    [Group] VARCHAR(50) NOT NULL,
    ProductName VARCHAR(100) NOT NULL,
    Quantity SMALLINT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    CreatedDateTime DATETIME2 NOT NULL
);
--#endregion

--#region 2. Insert Data
INSERT INTO SalesArchive (OrderID, Username, [Group], ProductName, Quantity, UnitPrice, CreatedDateTime)
VALUES
    ('ORD-0001', 'alice', 'Electronics', 'Quantum Communicator', 1, 4499.99, '2356-03-14 10:21:44'),
    ('ORD-0002', 'bob', 'Furniture', 'Anti-Gravity Chair', 1, 2399, '2357-11-02 16:05:12'),
    ('ORD-0003', 'carol', 'Books', 'Galactic SQL Handbook', 2, 39.95, '2358-07-19 09:18:33'),
    ('ORD-0004', 'david', 'Books', 'EF Core in the Milky Way', 1, 49.95, '2359-01-27 14:42:06'),
    ('ORD-0005', 'erin', 'Furniture', 'Holographic Desk', 3, 3599.95, '2359-05-08 11:09:58'),
    ('ORD-0006', 'frank', 'Electronics', 'Neural Interface Headset', 2, 1299.5, '2360-02-15 15:33:41'),
    ('ORD-0007', 'grace', 'Sports', 'Zero-Gravity Running Shoes', 1, 419.99, '2360-06-01 10:55:27'),
    ('ORD-0008', 'henry', 'Office', 'Auto-Summarizing Notepad', 5, 19.99, '2360-10-23 13:07:05'),
    ('ORD-0009', 'irene', 'Electronics', 'Neural Interface Headset', 1, 1499.5, '2361-01-04 09:48:22'),
    ('ORD-0010', 'james', 'Furniture', 'Holographic Desk', 1, 3599.95, '2361-03-12 17:11:39'),
    ('ORD-0011', 'alice', 'Home', 'Smart Wall Projection Frame', 1, 1199, '2361-04-29 12:36:10'),
    ('ORD-0012', 'bob', 'Electronics', 'Quantum Communicator', 2, 4299.99, '2361-07-09 16:59:04'),
    ('ORD-0013', 'carol', 'Furniture', 'Anti-Gravity Chair', 1, 2299.99, '2361-09-18 08:24:55'),
    ('ORD-0014', 'david', 'Toys', 'Programmable Robot Pet', 1, 949.99, '2361-11-22 19:03:17'),
    ('ORD-0015', 'erin', 'Electronics', 'Quantum Communicator', 1, 3999.25, '2362-01-10 10:12:44'),
    ('ORD-0016', 'frank', 'Books', 'EF Core in the Milky Way', 1, 49.95, '2362-02-03 14:28:01'),
    ('ORD-0017', 'grace', 'Books', 'Galactic SQL Handbook', 5, 39.95, '2362-03-15 09:07:36'),
    ('ORD-0018', 'henry', 'Sports', 'Hydro-Resistant Training Suit', 1, 229, '2362-05-02 18:41:19'),
    ('ORD-0019', 'irene', 'Furniture', 'Anti-Gravity Chair', 1, 2299.99, '2362-07-21 11:55:09'),
    ('ORD-0020', 'james', 'Electronics', 'Subspace Message Capsule', 1, 1499, '2362-08-30 16:06:52'),
    ('ORD-0021', 'alice', 'Health', 'Vital Sign Ring Pro', 1, 279.99, '2362-10-05 08:58:27'),
    ('ORD-0022', 'bob', 'Office', 'Noise-Isolating Desk Dome', 1, 749, '2362-11-14 13:19:45'),
    ('ORD-0023', 'carol', 'Electronics', 'Warp Core Mini Reactor', 1, 99999.99, '2362-12-03 17:44:11'),
    ('ORD-0024', 'david', 'Books', 'Database Normalization Stories', 2, 24.99, '2362-12-18 10:09:03'),
    ('ORD-0025', 'erin', 'Books', 'Galactic SQL Handbook', 1, 50.99, '2362-12-31 21:27:40');

INSERT INTO Sales (OrderID, Username, [Group], ProductName, Quantity, UnitPrice, CreatedDateTime)
VALUES
    ('ORD-0026', 'alice', 'Electronics', 'Quantum Communicator', 2, 4299.99, '2363-01-03 10:12:34'),
    ('ORD-0027', 'bob', 'Furniture', 'Anti-Gravity Chair', 1, 2599, '2363-01-18 14:45:11'),
    ('ORD-0028', 'carol', 'Books', 'Galactic SQL Handbook', 2, 49.95, '2363-02-07 09:31:22'),
    ('ORD-0029', 'david', 'Electronics', 'Neural Interface Headset', 1, 1299.5, '2363-02-26 16:08:55'),
    ('ORD-0030', 'bob', 'Furniture', 'Holographic Desk', 1, 3599.95, '2363-03-11 11:54:03'),
    ('ORD-0031', 'frank', 'Books', 'EF Core in the Milky Way', 3, 49.95, '2363-03-29 13:16:07'),
    ('ORD-0032', 'grace', 'Electronics', 'Subspace Message Capsule', 2, 1499, '2363-04-06 15:44:02'),
    ('ORD-0033', 'henry', 'Office', 'Auto-Summarizing Notepad', 5, 24.99, '2363-04-21 09:21:44'),
    ('ORD-0034', 'irene', 'Sports', 'Zero-Gravity Running Shoes', 1, 399.99, '2363-05-09 10:59:17'),
    ('ORD-0035', 'james', 'Toys', 'Programmable Robot Pet', 1, 949.99, '2363-05-27 17:26:33'),
    ('ORD-0036', 'alice', 'Electronics', 'Quantum Communicator', 2, 4299.99, '2363-06-04 11:31:06'),
    ('ORD-0037', 'bob', 'Home', 'Smart Wall Projection Frame', 1, 1299, '2363-06-19 14:09:28'),
    ('ORD-0038', 'carol', 'Furniture', 'Holographic Desk', 1, 3599.95, '2363-07-02 16:55:10'),
    ('ORD-0039', 'david', 'Health', 'Vital Sign Ring Pro', 1, 279.99, '2363-07-18 10:42:39'),
    ('ORD-0040', 'irene', 'Electronics', 'Neural Interface Headset', 2, 1299.5, '2363-08-06 13:18:41'),
    ('ORD-0041', 'frank', 'Books', 'EF Core in the Milky Way', 1, 54.95, '2363-08-23 09:08:54'),
    ('ORD-0042', 'grace', 'Home', 'Smart Wall Projection Frame', 2, 1199, '2363-09-04 15:58:26'),
    ('ORD-0043', 'henry', 'Electronics', 'Subspace Message Capsule', 1, 1499, '2363-09-21 11:49:02'),
    ('ORD-0044', 'irene', 'Office', 'Noise-Isolating Desk Dome', 1, 749, '2363-10-07 14:22:45'),
    ('ORD-0045', 'james', 'Electronics', 'Warp Core Mini Reactor', 1, 99999.99, '2363-10-29 17:07:55'),
    ('ORD-0046', 'alice', 'Home', 'Smart Wall Projection Frame', 1, 1199, '2363-11-12 09:07:36'),
    ('ORD-0047', 'bob', 'Electronics', 'Quantum Communicator', 1, 3999.25, '2363-11-26 12:36:10'),
    ('ORD-0048', 'carol', 'Furniture', 'Anti-Gravity Chair', 1, 2399, '2363-12-08 16:59:04'),
    ('ORD-0049', 'david', 'Books', 'Database Normalization Stories', 3, 29.99, '2363-12-19 08:58:27'),
    ('ORD-0050', 'alice', 'Books', 'Galactic SQL Handbook', 1, 39.95, '2364-01-05 13:19:45'),
    ('ORD-0051', 'frank', 'Sports', 'Hydro-Resistant Training Suit', 2, 229, '2364-01-22 10:18:27'),
    ('ORD-0052', 'grace', 'Electronics', 'Subspace Message Capsule', 1, 1599, '2364-02-09 15:07:33'),
    ('ORD-0053', 'henry', 'Furniture', 'Holographic Desk', 1, 3599.95, '2364-02-28 11:03:22'),
    ('ORD-0054', 'irene', 'Health', 'Vital Sign Ring Pro', 1, 299.99, '2364-03-14 17:11:39'),
    ('ORD-0055', 'james', 'Electronics', 'Warp Core Mini Reactor', 1, 99999.99, '2364-03-30 19:03:17'),
    ('ORD-0056', 'alice', 'Books', 'EF Core in the Milky Way', 1, 39.99, '2364-04-11 09:26:44'),
    ('ORD-0057', 'bob', 'Home', 'Smart Wall Projection Frame', 2, 279.5, '2364-04-27 13:48:53'),
    ('ORD-0058', 'carol', 'Electronics', 'Neural Interface Headset', 1, 3499, '2364-05-08 16:11:36'),
    ('ORD-0059', 'david', 'Office', 'Noise-Isolating Desk Dome', 1, 699, '2364-05-24 10:07:29'),
    ('ORD-0060', 'carol', 'Books', 'Galactic SQL Handbook', 2, 59.99, '2364-06-03 18:27:40'),
    ('ORD-0061', 'frank', 'Electronics', 'Subspace Message Capsule', 3, 119.95, '2364-06-21 11:42:19'),
    ('ORD-0062', 'grace', 'Home', 'Smart Wall Projection Frame', 4, 39.5, '2364-07-07 15:33:05'),
    ('ORD-0063', 'henry', 'Sports', 'Hydro-Resistant Training Suit', 1, 249, '2364-07-25 09:31:55'),
    ('ORD-0064', 'irene', 'Electronics', 'Quantum Communicator', 1, 699.99, '2364-08-10 13:22:41'),
    ('ORD-0065', 'james', 'Toys', 'Programmable Robot Pet', 1, 899.99, '2364-08-29 17:14:06'),
    ('ORD-0066', 'alice', 'Electronics', 'Neural Interface Headset', 1, 1499, '2364-09-12 10:46:58'),
    ('ORD-0067', 'bob', 'Furniture', 'Anti-Gravity Chair', 2, 299, '2364-10-03 14:36:51'),
    ('ORD-0068', 'carol', 'Home', 'Smart Wall Projection Frame', 1, 999, '2364-10-19 08:24:55'),
    ('ORD-0069', 'david', 'Books', 'Database Normalization Stories', 1, 59.99, '2364-11-06 16:59:04'),
    ('ORD-0070', 'grace', 'Electronics', 'Warp Core Mini Reactor', 1, 15999, '2364-12-15 21:27:40');
    
--#endregion