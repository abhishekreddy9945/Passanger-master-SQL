-- PassengerMaster-SQL
-- SQL Server project for managing passenger details
-- Includes table creation, sample data, filtering, sorting,
-- aggregate queries and join-ready queries.

-- Create table
CREATE TABLE PassengerMaster (
    PassengerID INT PRIMARY KEY,
    PNRNo INT NOT NULL,
    PassengerName VARCHAR(100) NOT NULL,
    Age INT,
    Gender VARCHAR(10),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(200)
);

-- Insert sample records
INSERT INTO PassengerMaster
(PassengerID, PNRNo, PassengerName, Age, Gender, PhoneNumber, Email, Address)
VALUES
(1, 14358, 'Rahul Kumar', 28, 'Male', '9876543210', 'rahul@gmail.com', 'Bengaluru'),
(2, 24567, 'Priya Sharma', 24, 'Female', '9876543211', 'priya@gmail.com', 'Hyderabad'),
(3, 39875, 'Arjun Reddy', 32, 'Male', '9876543212', 'arjun@gmail.com', 'Ballari'),
(4, 45028, 'Sneha Reddy', 27, 'Female', '9876543213', 'sneha@gmail.com', 'Chennai'),
(5, 39456, 'Kiran Kumar', 35, 'Male', '9876543214', 'kiran@gmail.com', 'Mysuru');

-- Display all passengers
SELECT * FROM PassengerMaster;

-- Select specific columns
SELECT PassengerID, PNRNo, PassengerName, Age, Gender
FROM PassengerMaster;

-- Filter passengers by gender
SELECT *
FROM PassengerMaster
WHERE Gender = 'Male';

SELECT *
FROM PassengerMaster
WHERE Gender = 'Female';

-- Filter passengers by age
SELECT *
FROM PassengerMaster
WHERE Age > 30;

-- Filter passengers by city
SELECT *
FROM PassengerMaster
WHERE Address = 'Ballari';

-- DISTINCT values
SELECT DISTINCT Gender
FROM PassengerMaster;

SELECT DISTINCT Address
FROM PassengerMaster;

-- ORDER BY
SELECT *
FROM PassengerMaster
ORDER BY PassengerName ASC;

SELECT *
FROM PassengerMaster
ORDER BY Age DESC;

-- Search by passenger name
SELECT *
FROM PassengerMaster
WHERE PassengerName LIKE 'A%';

-- Count passengers
SELECT COUNT(*) AS TotalPassengers
FROM PassengerMaster;

-- Average age
SELECT AVG(CAST(Age AS DECIMAL(10,2))) AS AverageAge
FROM PassengerMaster;

-- Minimum and maximum age
SELECT MIN(Age) AS MinimumAge,
       MAX(Age) AS MaximumAge
FROM PassengerMaster;

-- GROUP BY
SELECT Gender, COUNT(*) AS PassengerCount
FROM PassengerMaster
GROUP BY Gender;

-- GROUP BY city
SELECT Address, COUNT(*) AS PassengerCount
FROM PassengerMaster
GROUP BY Address;

-- BETWEEN
SELECT *
FROM PassengerMaster
WHERE Age BETWEEN 25 AND 35;

-- IN
SELECT *
FROM PassengerMaster
WHERE Address IN ('Bengaluru', 'Ballari', 'Mysuru');

-- UPDATE example
-- UPDATE PassengerMaster
-- SET PhoneNumber = '9999999999'
-- WHERE PassengerID = 1;

-- DELETE example
-- DELETE FROM PassengerMaster
-- WHERE PassengerID = 5;

-- Example INNER JOIN with another table
-- SELECT P.PassengerID, P.PassengerName, P.PNRNo, A.amount
-- FROM PassengerMaster P
-- INNER JOIN AccountMaster1 A
-- ON P.PNRNo = A.PNRNo;

-- Example LEFT JOIN
-- SELECT P.PassengerID, P.PassengerName, P.PNRNo, A.amount
-- FROM PassengerMaster P
-- LEFT JOIN AccountMaster1 A
-- ON P.PNRNo = A.PNRNo;

-- Example RIGHT JOIN
-- SELECT P.PassengerID, P.PassengerName, P.PNRNo, A.amount
-- FROM PassengerMaster P
-- RIGHT JOIN AccountMaster1 A
-- ON P.PNRNo = A.PNRNo;
