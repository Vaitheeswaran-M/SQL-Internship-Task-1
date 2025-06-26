SELECT * FROM books;
SELECT title, author FROM books;

SELECT * FROM members
WHERE name LIKE 'A%';

SELECT * FROM books
WHERE genre = 'Self-help';

SELECT * FROM members
WHERE email LIKE '%@gmail.com';

SELECT * FROM borrow_records
WHERE borrow_date BETWEEN '2024-06-01' AND '2024-06-30';

SELECT * FROM borrow_records
ORDER BY borrow_date DESC;

SELECT * FROM books
WHERE quantity < 5;

SELECT * FROM borrow_records
ORDER BY borrow_date DESC
LIMIT 3;

SELECT m.name, br.borrow_date
FROM members m
JOIN borrow_records br ON m.member_id = br.member_id
WHERE br.book_id = 1;