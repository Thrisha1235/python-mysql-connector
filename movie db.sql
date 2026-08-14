-- 1. Create the database
CREATE DATABASE MovieStreamDB;

-- 2. Use the database
USE MovieStreamDB;

-- 3. Create the Movies table
CREATE TABLE Movies (
    Movie_ID INT PRIMARY KEY,
    Movie_Name VARCHAR(100) NOT NULL,
    Genre VARCHAR(50) NOT NULL,
    Language VARCHAR(50) NOT NULL,
    Rating DECIMAL(3,1),
    Duration_Min INT,
    Release_Year INT
);

-- 4. Insert all 6 records
INSERT INTO Movies
(Movie_ID, Movie_Name, Genre, Language, Rating, Duration_Min, Release_Year)
VALUES
(101, 'Leo', 'Action', 'Tamil', 8.2, 164, 2023),
(102, 'Premalu', 'Romance', 'Malayalam', 8.5, 156, 2024),
(103, 'KGF', 'Action', 'Kannada', 8.4, 168, 2018),
(104, 'Drishyam', 'Thriller', 'Malayalam', 8.6, 160, 2013),
(105, 'Jawan', 'Action', 'Hindi', 7.4, 169, 2023),
(106, '96', 'Romance', 'Tamil', 8.5, 158, 2018);


-- 5. Display all movie details
SELECT * FROM Movies;


-- 6. Display only Movie_Name and Rating
SELECT Movie_Name, Rating
FROM Movies;


-- 7. Display all distinct genres
SELECT DISTINCT Genre
FROM Movies;


-- 8. Display all distinct languages
SELECT DISTINCT Language
FROM Movies;


-- 9. Display top 3 movies
SELECT *
FROM Movies
LIMIT 3;


-- 10. Display top 2 highest-rated movies
SELECT *
FROM Movies
ORDER BY Rating DESC
LIMIT 2;


-- 11. Display movies with rating > 8.0
SELECT *
FROM Movies
WHERE Rating > 8.0;


-- 12. Display movies released after 2020
SELECT *
FROM Movies
WHERE Release_Year > 2020;


-- 13. Display Action movies
SELECT *
FROM Movies
WHERE Genre = 'Action';


-- 14. Display movies ordered by Rating DESC
SELECT *
FROM Movies
ORDER BY Rating DESC;


-- 15. Display movies ordered by Release_Year ASC
SELECT *
FROM Movies
ORDER BY Release_Year ASC;


-- 16. Find maximum rating
SELECT MAX(Rating) AS Maximum_Rating
FROM Movies;


-- 17. Find minimum duration
SELECT MIN(Duration_Min) AS Minimum_Duration
FROM Movies;


-- 18. Find average rating
SELECT AVG(Rating) AS Average_Rating
FROM Movies;


-- 19. Count movies in each genre
SELECT Genre, COUNT(*) AS Movie_Count
FROM Movies
GROUP BY Genre;


-- 20. Find average rating for each language
SELECT Language, AVG(Rating) AS Average_Rating
FROM Movies
GROUP BY Language;


-- 21. Display genres having more than 1 movie
SELECT Genre, COUNT(*) AS Movie_Count
FROM Movies
GROUP BY Genre
HAVING COUNT(*) > 1;


-- 22. Display languages having more than 1 movie
SELECT Language, COUNT(*) AS Movie_Count
FROM Movies
GROUP BY Language
HAVING COUNT(*) > 1;