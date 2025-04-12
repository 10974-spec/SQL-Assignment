-- Get all books with authors
SELECT b.title, a.name 
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id;

-- Count orders by status
SELECT os.status_name, COUNT(o.order_id) 
FROM cust_order o
JOIN order_status os ON o.status_id = os.status_id
GROUP BY os.status_name;
