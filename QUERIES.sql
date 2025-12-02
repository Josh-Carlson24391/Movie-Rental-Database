

--QUERY 1: List all employees along with their respective manager names.
SELECT e.name AS employee, m.name AS manager
FROM Employee e
JOIN Manager m ON e.manager_id = m.manager_id;

--QUERY 2: List all action movies that are in stock.
SELECT DISTINCT
    m.title,
    m.genre
From Movie m
JOIN Catalog c
    ON m.movie_id = c.movie_id
WHERE m.genre = 'ACTION' AND c.available = TRUE;

--QUERY 3: When was rental number 6001 checked out?
SELECT rental_date
FROM Rental
WHERE rental_id = 6001;

--QUERY 4: How many copies of Forrest Gump does the store have in stock?
SELECT
    COUNT(*) AS copies_in_stock
FROM Catalog c
JOIN Movie m
    ON m.movie_id = c.movie_id
WHERE m.title = 'FORREST GUMP' AND c.available = TRUE;

--QUERY 5: When is rental number 6003 supposed to be returned by?
SELECT return_date
FROM Rental
WHERE rental_id = 6003;


