-- Retail SQL Project: Sample Data

INSERT INTO customers (customer_id, name, email) VALUES
(1, 'Ayesha Khan', 'ayesha@email.com'),
(2, 'John Smith', 'john@email.com'),
(3, 'Maria Garcia', 'maria@email.com'),
(4, 'Wei Chen', 'wei@email.com'),
(5, 'Fatima Ali', 'fatima@email.com');

INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Wireless Mouse', 15.99),
(2, 'Bluetooth Headphones', 45.50),
(3, 'USB-C Cable', 9.99),
(4, 'Laptop Stand', 29.99),
(5, 'Mechanical Keyboard', 65.00),
(6, 'Webcam HD', 34.99),
(7, 'Phone Case', 12.50),
(8, 'Portable Charger', 22.99),
(9, 'Desk Lamp', 18.75),
(10, 'Screen Cleaner Kit', 7.99);

INSERT INTO orders (order_id, customer_id, order_date, status) VALUES
(1, 1, '2026-08-01', 'completed'),
(2, 2, '2026-08-03', 'completed'),
(3, 1, '2026-08-05', 'completed'),
(4, 3, '2026-08-07', 'cancelled'),
(5, 4, '2026-08-10', 'completed'),
(6, 2, '2026-08-12', 'completed'),
(7, 5, '2026-08-14', 'completed'),
(8, 1, '2026-08-16', 'refunded'),
(9, 3, '2026-08-18', 'completed'),
(10, 4, '2026-08-20', 'completed'),
(11, 5, '2026-08-22', 'completed'),
(12, 2, '2026-08-24', 'completed');

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 2, 15.99),
(2, 1, 3, 1, 9.99),
(3, 2, 2, 1, 45.50),
(4, 3, 5, 1, 65.00),
(5, 3, 6, 1, 34.99),
(6, 4, 4, 1, 29.99),
(7, 5, 7, 2, 12.50),
(8, 5, 10, 1, 7.99),
(9, 6, 8, 1, 22.99),
(10, 6, 2, 1, 45.50),
(11, 7, 9, 1, 18.75),
(12, 7, 1, 1, 15.99),
(13, 8, 5, 1, 65.00),
(14, 9, 3, 3, 9.99),
(15, 9, 4, 1, 29.99),
(16, 10, 6, 1, 34.99),
(17, 10, 7, 1, 12.50),
(18, 11, 2, 1, 45.50),
(19, 11, 8, 1, 22.99),
(20, 12, 1, 1, 15.99),
(21, 12, 10, 2, 7.99);
