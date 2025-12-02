
--CREATE TABLES FOR MOVIE RENTAL DATABASE


-- Manager(manager_id, name, phone, salary, years_experience, yearly_bonus) 

CREATE TABLE Manager(
    manager_id INT PRIMARY KEY, 
    name VARCHAR(20), 
    phone INT, 
    salary INT, 
    years_experience INT, 
    yearly_bonus INT
);

-- Employee(employee_id, manager_id (FK), name, title, phone, salary)

CREATE TABLE Employee(
    employee_id INT PRIMARY KEY, 
    manager_id REFERENCES Manager(manager_id),
    name VARCHAR(20), 
    title VARCHAR(20),
    phone INT, 
    salary INT 
    );


-- Customer(customer_id, name, phone, address, email, DOB)

CREATE TABLE Customer(
    --Primary Key:
    customer_id INT PRIMARY KEY,
    name VARCHAR(20),
    phone INT,
    address VARCHAR(50),
    email VARCHAR(50),
    DOB VARCHAR(10)
);

-- Movie(movie_id, title, description, length, genre, director)
CREATE TABLE Movie(
    movie_id INT PRIMARY KEY,
    title VARCHAR(50),
    description VARCHAR(255),
    length INT,
    genre VARCHAR(20),
    director VARCHAR(30)
);

-- WEAK ENTITY -> Inventory/Catalog(catalog_id, movie_id(FK), format, condition, available)
CREATE TABLE Catalog(
    catalog_id INT PRIMARY KEY,
    movie_id REFERENCES Movie(movie_id),
    format VARCHAR(10),
    condition VARCHAR(20),
    available BOOLEAN
);



--COULD ADD ANOTHER ATTRIBUTE CALLED 'RETURNED' TO TRACK IF MOVIE HAS BEEN RETURNED OR NOT, RENTALS ARE ESSENTIALLY ORDER RECORDS

-- Rental(rental_id, UNIQUE catalog_id(FK), customer_id(FK), employee_id(FK), price, rental_date, return_date)
CREATE TABLE Rental(
    rental_id INT PRIMARY KEY,
    catalog_id REFERENCES Catalog(catalog_id) UNIQUE,
    customer_id REFERENCES Customer(customer_id),
    employee_id REFERENCES Employee(employee_id),
    price INT,
    rental_date VARCHAR(10),
    return_date VARCHAR(10)
);



