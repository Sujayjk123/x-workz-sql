CREATE TABLE airport_details (
    airport_id INT PRIMARY KEY,
    airport_name VARCHAR(255),
    city VARCHAR(100),
    country VARCHAR(100),
    iata_code VARCHAR(10),
    icao_code VARCHAR(10),
    number_of_runways INT,
    passenger_capacity INT,
    international BOOLEAN,
    year_established INT
);

CREATE TABLE olympic_games (
    olympic_id INT PRIMARY KEY,
    year INT,
    host_city VARCHAR(100),
    country VARCHAR(100),
    sport VARCHAR(100),
    event VARCHAR(100),
    number_of_participants INT,
    number_of_countries INT,
    medals_awarded INT,
    winter_games BOOLEAN
);

INSERT INTO airport_details (airport_id, airport_name, city, country, iata_code, icao_code, number_of_runways, passenger_capacity, international, year_established) VALUES
(1, 'Heathrow Airport', 'London', 'UK', 'LHR', 'EGLL', 2, 80000000, TRUE, 1946),
(2, 'John F. Kennedy International Airport', 'New York', 'USA', 'JFK', 'KJFK', 4, 62000000, TRUE, 1948),
(3, 'Changi Airport', 'Singapore', 'Singapore', 'SIN', 'WSSS', 3, 70000000, TRUE, 1981),
(4, 'Los Angeles International Airport', 'Los Angeles', 'USA', 'LAX', 'KLAX', 4, 88000000, TRUE, 1930),
(5, 'Indira Gandhi International Airport', 'New Delhi', 'India', 'DEL', 'VIDP', 3, 76000000, TRUE, 1986),
(6, 'Dubai International Airport', 'Dubai', 'UAE', 'DXB', 'OMDB', 2, 89000000, TRUE, 1960),
(7, 'Tokyo Haneda Airport', 'Tokyo', 'Japan', 'HND', 'RJTT', 3, 85000000, TRUE, 1931),
(8, 'Paris Charles de Gaulle Airport', 'Paris', 'France', 'CDG', 'LFPG', 4, 72000000, TRUE, 1974),
(9, 'Frankfurt Airport', 'Frankfurt', 'Germany', 'FRA', 'EDDF', 2, 70000000, TRUE, 1958),
(10, 'Sydney Kingsford Smith Airport', 'Sydney', 'Australia', 'SYD', 'YSSY', 3, 44000000, TRUE, 1920),
(11, 'Toronto Pearson International Airport', 'Toronto', 'Canada', 'YYZ', 'CYYZ', 5, 50000000, TRUE, 1939),
(12, 'Hare International Airport', 'Chicago', 'USA', 'ORD', 'KORD', 4, 78000000, TRUE, 1955);

INSERT INTO olympic_games (olympic_id, year, host_city, country, sport, event, number_of_participants, number_of_countries, medals_awarded, winter_games) VALUES
(1, 2016, 'Rio de Janeiro', 'Brazil', 'Athletics', '100m sprint', 11000, 207, 100, FALSE),
(2, 2020, 'Tokyo', 'Japan', 'Swimming', '200m freestyle', 12000, 206, 98, FALSE),
(3, 2012, 'London', 'UK', 'Cycling', 'Road race', 10500, 204, 95, FALSE),
(4, 2008, 'Beijing', 'China', 'Gymnastics', 'Artistic gymnastics', 11200, 205, 110, FALSE),
(5, 2004, 'Athens', 'Greece', 'Basketball', 'Men\'s final', 10000, 202, 80, FALSE),
(6, 2018, 'Pyeongchang', 'South Korea', 'Skiing', 'Slalom', 2900, 92, 35, TRUE),
(7, 2006, 'Turin', 'Italy', 'Ice Hockey', 'Final match', 2500, 80, 45, TRUE),
(8, 1996, 'Atlanta', 'USA', 'Tennis', 'Men\'s singles', 10500, 197, 85, FALSE),
(9, 1992, 'Barcelona', 'Spain', 'Basketball', 'Men\'s final', 9000, 170, 60, FALSE),
(10, 1988, 'Calgary', 'Canada', 'Figure Skating', 'Men\'s singles', 2400, 70, 30, TRUE),
(11, 1984, 'Los Angeles', 'USA', 'Athletics', '200m sprint', 9300, 140, 85, FALSE),
(12, 1980, 'Moscow', 'Russia', 'Boxing', 'Men\'s middleweight', 8500, 80, 70, FALSE);

SELECT * FROM airport_details
WHERE country = 'USA' AND number_of_runways > 2;


SELECT * FROM airport_details
WHERE country = 'USA' OR country = 'India';


SELECT * FROM olympic_games
WHERE year IN (2016, 2020, 2012);


SELECT * FROM olympic_games
WHERE country NOT IN ('Japan', 'China', 'USA');


