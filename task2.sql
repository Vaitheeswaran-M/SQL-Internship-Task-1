INSERT INTO books (book_id, title, author, genre, quantity)
VALUES 
(1, 'Atomic Habits', 'James Clear', 'Self-help', 10),
(2, 'The Alchemist', 'Paulo Coelho', 'Fiction', 5),
(3, 'Wings of Fire', 'A. P. J. Abdul Kalam', 'Biography', NULL);  -- NULL quantity (maybe out of stock)

INSERT INTO members (member_id, name, email, phone)
VALUES 
(101, 'Arjun Kumar', 'arjun@example.com', '9876543210'),
(102, 'Meera Sharma', 'meera@example.com', NULL),  -- Missing phone
(103, 'Rahul Dev', NULL, '9123456789');             -- Missing email

INSERT INTO borrow_records (record_id, member_id, book_id, borrow_date, return_date)
VALUES 
(201, 101, 1, '2025-06-20', '2025-06-27'),
(202, 102, 2, '2025-06-21', NULL),  -- Not yet returned
(203, 103, 3, '2025-06-22', '2025-06-28');

UPDATE books
SET quantity = 15
WHERE book_id = 2;

UPDATE members
SET phone = '9000012345'
WHERE member_id = 102;

UPDATE borrow_records
SET return_date = '2025-06-30'
WHERE record_id = 202;

DELETE FROM books
WHERE book_id = 3;

DELETE FROM members
WHERE member_id = 103;

DELETE FROM borrow_records
WHERE record_id = 203;

SELECT * FROM books;
SELECT * FROM members;
SELECT * FROM borrow_records;