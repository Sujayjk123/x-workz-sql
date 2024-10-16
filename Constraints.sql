CREATE TABLE Books_store (
    BookID INT ,
    Title VARCHAR(255) ,
    Author VARCHAR(255),
    Genre VARCHAR(100),
    PublishedYear YEAR
);

CREATE TABLE Flights (
    FlightID INT ,
    Airline VARCHAR(100) ,
    Origin VARCHAR(100) ,
    Destination VARCHAR(100) ,
    DepartureTime DATETIME
);

ALTER TABLE Books_store MODIFY COLUMN Title varchar(255) NOT NULL;

ALTER TABLE Flights MODIFY COLUMN origin varchar(255) NOT NULL;

ALTER TABLE Books_store MODIFY COLUMN BookID INT UNIQUE;

ALTER TABLE Flights MODIFY COLUMN FlightID INT UNIQUE;

ALTER TABLE Books_store MODIFY COLUMN  PublishedYear INT;

SELECT * FROM Flights;


INSERT INTO Books_store (BookID, Title, Author, Genre, PublishedYear) VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960),
(2, '1984', 'George Orwell', 'Dystopian', 1949),
(3, 'Moby Dick', 'Herman Melville', 'Adventure', 1951),
(4, 'Pride and Prejudice', 'Jane Austen', 'Romance', 1920),
(5, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925),
(6, 'War and Peace', 'Leo Tolstoy', 'Historical Fiction', 1869),
(7, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951),
(8, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937),
(9, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 1954),
(10, 'Crime and Punishment', 'Fyodor Dostoevsky', 'Philosophical Fiction', 1866),
(11, 'The Odyssey', 'Homer', 'Epic', -800),
(12, 'Brave New World', 'Aldous Huxley', 'Science Fiction', 1932),
(13, 'The Divine Comedy', 'Dante Alighieri', 'Epic', 1320),
(14, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 'Philosophical Fiction', 1880),
(15, 'The Metamorphosis', 'Franz Kafka', 'Absurdist Fiction', 1915),
(16, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Magical Realism', 1967),
(17, 'The Alchemist', 'Paulo Coelho', 'Adventure', 1988),
(18, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Gothic Fiction', 1890),
(19, 'Don Quixote', 'Miguel de Cervantes', 'Classic', 1605),
(20, 'Jane Eyre', 'Charlotte Bronte', 'Romance', 1847);


INSERT INTO Flights (FlightID, Airline, Origin, Destination, DepartureTime) VALUES
(1, 'Emirates', 'Dubai', 'New York', '2024-10-15 08:30:00'),
(2, 'Qatar Airways', 'Doha', 'London', '2024-10-15 12:45:00'),
(3, 'Singapore Airlines', 'Singapore', 'San Francisco', '2024-10-16 09:00:00'),
(4, 'British Airways', 'London', 'Sydney', '2024-10-16 14:15:00'),
(5, 'Air France', 'Paris', 'Tokyo', '2024-10-17 06:30:00'),
(6, 'Lufthansa', 'Frankfurt', 'Los Angeles', '2024-10-18 16:50:00'),
(7, 'Delta Airlines', 'Atlanta', 'Amsterdam', '2024-10-19 10:00:00'),
(8, 'American Airlines', 'Dallas', 'Hong Kong', '2024-10-20 11:30:00'),
(9, 'Cathay Pacific', 'Hong Kong', 'Toronto', '2024-10-21 15:45:00'),
(10, 'Turkish Airlines', 'Istanbul', 'Chicago', '2024-10-21 13:20:00'),
(11, 'KLM', 'Amsterdam', 'Bangkok', '2024-10-22 09:15:00'),
(12, 'ANA', 'Tokyo', 'Singapore', '2024-10-23 07:00:00'),
(13, 'Etihad Airways', 'Abu Dhabi', 'Mumbai', '2024-10-24 02:50:00'),
(14, 'Swiss International Air Lines', 'Zurich', 'New York', '2024-10-25 17:00:00'),
(15, 'Air India', 'Delhi', 'Melbourne', '2024-10-26 23:45:00'),
(16, 'Thai Airways', 'Bangkok', 'Dubai', '2024-10-27 19:10:00'),
(17, 'Qantas', 'Sydney', 'Los Angeles', '2024-10-28 18:25:00'),
(18, 'United Airlines', 'Chicago', 'Paris', '2024-10-29 13:35:00'),
(19, 'Japan Airlines', 'Tokyo', 'Helsinki', '2024-10-30 11:45:00'),
(20, 'Iberia', 'Madrid', 'Buenos Aires', '2024-10-31 22:00:00');



