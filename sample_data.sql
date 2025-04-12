-- 1. Languages
INSERT INTO book_language (language_name) VALUES 
('English'), ('French'), ('Spanish'), ('Swahili'), ('Kikuyu'), ('Luo'), ('Kiswahili'), ('Afrikaans');

-- 2. Publishers (including African publishers)
INSERT INTO publisher (publisher_name) VALUES 
('Penguin Books'), ('HarperCollins'), ('Simon & Schuster'),
('East African Educational Publishers'), ('Kwani Trust'), ('Storymoja'),
('African Books Collective'), ('Nairobi Press'), ('Mkuki na Nyota');

-- 3. Authors (Kenyan/African authors)
INSERT INTO author (name) VALUES
('Ngũgĩ wa Thiong''o'), ('Chimamanda Ngozi Adichie'), ('Binyavanga Wainaina'),
('Yvonne Adhiambo Owuor'), ('Meja Mwangi'), ('Grace Ogot'),
('Mwenda Githinji'), ('Wanjiru Kihoro'), ('Okot p''Bitek'),
('Mariama Bâ'), ('Nuruddin Farah'), ('Tsitsi Dangarembga');

-- 4. Books (African literature)
INSERT INTO book (title, isbn, price, language_id, publisher_id) VALUES
('Petals of Blood', '978-0143105424', 12.99, 1, 4),
('Decolonising the Mind', '978-0852555019', 15.50, 1, 4),
('Weep Not, Child', '978-0143106698', 10.99, 1, 1),
('Half of a Yellow Sun', '978-0007200283', 14.99, 1, 2),
('Dust', '978-1616203044', 13.75, 1, 7),
('The River Between', '978-0143106697', 9.99, 1, 4),
('Song of Lawino', '978-0852550533', 11.25, 1, 9),
('So Long a Letter', '978-0435905558', 8.99, 2, 7),
('Nervous Conditions', '978-0954702335', 12.50, 1, 7),
('The Whale Rider', '978-0152050160', 10.99, 1, 3),
('Nairobi Heat', '978-1919931501', 9.99, 1, 8),
('The African Trilogy', '978-1847496121', 18.99, 1, 1);

-- 5. Book-Author relationships
INSERT INTO book_author (book_id, author_id) VALUES
(1, 1), (2, 1), (3, 1), (4, 2), (5, 4),
(6, 1), (7, 9), (8, 10), (9, 12), (11, 7);

-- 6. Countries
INSERT INTO country (country_name) VALUES
('Kenya'), ('Nigeria'), ('South Africa'), ('Uganda'), ('Tanzania'),
('Senegal'), ('Zimbabwe'), ('Ghana'), ('Ethiopia'), ('Rwanda');

-- 7. Address Statuses
INSERT INTO address_status (status_name) VALUES
('Current'), ('Previous'), ('Billing'), ('Shipping');

-- 8. Addresses (Kenyan addresses)
INSERT INTO address (street, city, postal_code, country_id) VALUES
('Moi Avenue', 'Nairobi', '00100', 1),
('Kenyatta Street', 'Mombasa', '80100', 1),
('Oginga Odinga Road', 'Kisumu', '40100', 1),
('Kimathi Street', 'Nakuru', '20100', 1),
('Kampala Road', 'Kampala', '256', 4),
('Ali Hassan Mwinyi Road', 'Dar es Salaam', '11101', 5);

-- 9. Customers (Kenyan names)
INSERT INTO customer (name, email, phone) VALUES
('Wanjiku Mwangi', 'wanjiku@example.com', '+254712345678'),
('Kamau Otieno', 'kamau@example.com', '+254723456789'),
('Amina Mohammed', 'amina@example.com', '+254734567890'),
('Juma Omondi', 'juma@example.com', '+254745678901'),
('Njeri Wambui', 'njeri@example.com', '+254756789012');

-- 10. Customer Addresses
INSERT INTO customer_address (customer_id, address_id, status_id) VALUES
(1, 1, 1), (1, 2, 3), (2, 3, 1), (3, 4, 1), (4, 5, 1), (5, 6, 1);

-- 11. Shipping Methods
INSERT INTO shipping_method (method_name, cost) VALUES
('Standard Shipping', 2.99),
('Express Shipping', 5.99),
('Pickup In-Store', 0.00),
('Same-Day Delivery', 8.99);

-- 12. Order Statuses
INSERT INTO order_status (status_name) VALUES
('Pending'), ('Processing'), ('Shipped'), ('Delivered'), ('Cancelled');

-- 13. Customer Orders
INSERT INTO cust_order (customer_id, shipping_method_id, status_id) VALUES
(1, 1, 4), (2, 3, 4), (3, 2, 3), (4, 1, 2), (5, 4, 1);

-- 14. Order Lines
INSERT INTO order_line (order_id, book_id, quantity, price) VALUES
(1, 1, 2, 12.99), (1, 3, 1, 10.99),
(2, 5, 1, 13.75), (3, 7, 3, 11.25),
(4, 2, 1, 15.50), (5, 4, 2, 14.99);

-- 15. Order History
INSERT INTO order_history (order_id, status_id) VALUES
(1, 1), (1, 2), (1, 3), (1, 4),
(2, 1), (2, 2), (2, 4),
(3, 1), (3, 2), (3, 3);
