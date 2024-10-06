
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author_id INT,
    genre VARCHAR(100),
    publication_year INT
);


CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(255),
    country VARCHAR(100),
    birth_year INT
);


CREATE TABLE borrowers (
    borrower_id INT PRIMARY KEY,
    name VARCHAR(255),
    membership_type VARCHAR(50),
    join_date DATE
);


CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    borrower_id INT,
    book_id INT,
    loan_date DATE,
    return_date DATE
);

INSERT INTO books (book_id, title, author_id, genre, publication_year) VALUES
(1, 'The Great Gatsby', 1, 'Fiction', 1925),
(2, 'To Kill a Mockingbird', 2, 'Fiction', 1960),
(3, '1984', 3, 'Dystopian', 1949),
(4, 'Moby Dick', 4, 'Adventure', 1851),
(5, 'Pride and Prejudice', 5, 'Romance', 1813),
(6, 'The Catcher in the Rye', 6, 'Fiction', 1951),
(7, 'War and Peace', 7, 'Historical', 1869),
(8, 'Ulysses', 8, 'Modernist', 1922),
(9, 'The Odyssey', 9, 'Epic', -800),
(10, 'Crime and Punishment', 10, 'Psychological', 1866);

INSERT INTO authors (author_id, name, country, birth_year) VALUES
(1, 'F. Scott Fitzgerald', 'USA', 1896),
(2, 'Harper Lee', 'USA', 1926),
(3, 'George Orwell', 'UK', 1903),
(4, 'Herman Melville', 'USA', 1819),
(5, 'Jane Austen', 'UK', 1775),
(6, 'J.D. Salinger', 'USA', 1919),
(7, 'Leo Tolstoy', 'Russia', 1828),
(8, 'James Joyce', 'Ireland', 1882),
(9, 'Homer', 'Greece', -800),
(10, 'Fyodor Dostoevsky', 'Russia', 1821);

INSERT INTO borrowers (borrower_id, name, membership_type, join_date) VALUES
(1, 'John Doe', 'Premium', '2023-01-15'),
(2, 'Jane Smith', 'Basic', '2022-05-10'),
(3, 'Emily Johnson', 'Premium', '2021-09-20'),
(4, 'Michael Brown', 'Basic', '2023-02-25'),
(5, 'Sarah Davis', 'Premium', '2022-11-12'),
(6, 'David Wilson', 'Basic', '2023-06-01'),
(7, 'Laura Miller', 'Premium', '2023-03-08'),
(8, 'Daniel Anderson', 'Basic', '2022-08-17'),
(9, 'James Thomas', 'Premium', '2021-12-05'),
(10, 'Emma Taylor', 'Basic', '2023-04-29');

INSERT INTO loans (loan_id, borrower_id, book_id, loan_date, return_date) VALUES
(1, 1, 1, '2024-09-01', '2024-09-15'),
(2, 2, 2, '2024-09-05', '2024-09-20'),
(3, 3, 3, '2024-09-10', '2024-09-24'),
(4, 4, 4, '2024-09-12', '2024-09-26'),
(5, 5, 5, '2024-09-14', '2024-09-29'),
(6, 6, 6, '2024-09-16', '2024-09-30'),
(7, 7, 7, '2024-09-18', '2024-10-02'),
(8, 8, 8, '2024-09-20', '2024-10-05'),
(9, 9, 9, '2024-09-22', '2024-10-06'),
(10, 10, 10, '2024-09-24', '2024-10-08');

SELECT * FROM books
WHERE publication_year > 1950;

SELECT * FROM authors
WHERE country = 'USA';

SELECT * FROM borrowers
WHERE membership_type = 'Premium';

SELECT * FROM loans
WHERE return_date > '2024-09-30';



