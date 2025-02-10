
CREATE DATABASE LibraryManagementSystem;
USE LibraryManagementSystem;

CREATE TABLE Books (
isbn varchar(255) PRIMARY KEY,
book_title VARCHAR(255) ,
Category VARCHAR(100) NOT NULL,
rental_Price DECIMAL(10, 2) NOT NULL,
Status varchar(5) NOT NULL,
Author VARCHAR(255),
Publisher VARCHAR(255) );

INSERT INTO Books (ISBN, Book_Title, Category, Rental_Price, Status, Author, Publisher) VALUES 
('978-0-553-29698-2', 'The Catcher in the Rye', 'Classic', 7, 'yes', 'J.D. Salinger', 'Little, Brown and Company'),
('978-0-330-25864-8', 'Animal Farm', 'Classic', 5.5, 'yes', 'George Orwell', 'Penguin Books'),
('978-0-14-118776-1', 'One Hundred Years of Solitude', 'Literary Fiction', 6.5, 'yes', 'Gabriel Garcia Marquez', 'Penguin Books'),
('978-0-525-47535-5', 'The Great Gatsby', 'Classic', 8, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
('978-0-141-44171-6', 'Jane Eyre', 'Classic', 4, 'yes', 'Charlotte Bronte', 'Penguin Classics'),
('978-0-307-37840-1', 'The Alchemist', 'Fiction', 2.5, 'yes', 'Paulo Coelho', 'HarperOne'),
('978-0-679-76489-8', 'Harry Potter and the Sorcerers Stone', 'Fantasy', 7, 'yes', 'J.K. Rowling', 'Scholastic'),
('978-0-7432-4722-4', 'The Da Vinci Code', 'Mystery', 8, 'yes', 'Dan Brown', 'Doubleday'),
('978-0-09-957807-9', 'A Game of Thrones', 'Fantasy', 7.5, 'yes', 'George R.R. Martin', 'Bantam'),
('978-0-393-05081-8', 'A Peoples History of the United States', 'History', 9, 'yes', 'Howard Zinn', 'Harper Perennial'),
('978-0-19-280551-1', 'The Guns of August', 'History', 7, 'yes', 'Barbara W. Tuchman', 'Oxford University Press'),
('978-0-307-58837-1', 'Sapiens: A Brief History of Humankind', 'History', 8, 'no', 'Yuval Noah Harari', 'Harper Perennial'),
('978-0-375-41398-8', 'The Diary of a Young Girl', 'History', 6.5, 'no', 'Anne Frank', 'Bantam'),
('978-0-14-044930-3', 'The Histories', 'History', 5.5, 'yes', 'Herodotus', 'Penguin Classics'),
('978-0-393-91257-8', 'Guns, Germs, and Steel: The Fates of Human Societies', 'History', 7, 'yes', 'Jared Diamond', 'W. W. Norton & Company'),
('978-0-7432-7357-1', '1491: New Revelations of the Americas Before Columbus', 'History', 6.5, 'no', 'Charles C. Mann', 'Vintage Books'),
('978-0-679-64115-3', '1984', 'Dystopian', 6.5, 'yes', 'George Orwell', 'Penguin Books'),
('978-0-14-143951-8', 'Pride and Prejudice', 'Classic', 5, 'yes', 'Jane Austen', 'Penguin Classics'),
('978-0-452-28240-7', 'Brave New World', 'Dystopian', 6.5, 'yes', 'Aldous Huxley', 'Harper Perennial'),
('978-0-670-81302-4', 'The Road', 'Dystopian', 7, 'yes', 'Cormac McCarthy', 'Knopf'),
('978-0-385-33312-0', 'The Shining', 'Horror', 6, 'yes', 'Stephen King', 'Doubleday'),
('978-0-451-52993-5', 'Fahrenheit 451', 'Dystopian', 5.5, 'yes', 'Ray Bradbury', 'Ballantine Books'),
('978-0-345-39180-3', 'Dune', 'Science Fiction', 8.5, 'yes', 'Frank Herbert', 'Ace'),
('978-0-375-50167-0', 'The Road', 'Dystopian', 7, 'yes', 'Cormac McCarthy', 'Vintage'),
('978-0-06-025492-6', 'Where the Wild Things Are', 'Children', 3.5, 'yes', 'Maurice Sendak', 'HarperCollins'),
('978-0-06-112241-5', 'The Kite Runner', 'Fiction', 5.5, 'yes', 'Khaled Hosseini', 'Riverhead Books'),
('978-0-06-440055-8', 'Charlotte\'s Web', 'Children', 4, 'yes', 'E.B. White', 'Harper & Row'),
('978-0-679-77644-3', 'Beloved', 'Fiction', 6.5, 'yes', 'Toni Morrison', 'Knopf'),
('978-0-14-027526-3', 'A Tale of Two Cities', 'Classic', 4.5, 'yes', 'Charles Dickens', 'Penguin Books'),
('978-0-7434-7679-3', 'The Stand', 'Horror', 7, 'yes', 'Stephen King', 'Doubleday'),
('978-0-451-52994-2', 'Moby Dick', 'Classic', 6.5, 'yes', 'Herman Melville', 'Penguin Books'),
('978-0-06-112008-4', 'To Kill a Mockingbird', 'Classic', 5, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.'),
('978-0-553-57340-1', '1984', 'Dystopian', 6.5, 'yes', 'George Orwell', 'Penguin Books'),
('978-0-7432-4722-5', 'Angels & Demons', 'Mystery', 7.5, 'yes', 'Dan Brown', 'Doubleday'),
('978-0-7432-7356-4', 'The Hobbit', 'Fantasy', 7, 'yes', 'J.R.R. Tolkien', 'Houghton Mifflin Harcourt');

CREATE TABLE Branches (
    branch_id varchar(255) PRIMARY KEY,
    manager_id VARCHAR(255),
    branch_address VARCHAR(255) NOT NULL,
    contact_number VARCHAR(255));
    
INSERT INTO Branches VALUES
('B001', 'E109', '123 Main St', '9191911911'),
('B002', 'E109', '456 Elm St', '9191911911'),
('B003', 'E109', '789 Oak St', '9191911911'),
('B004', 'E110', '567 Pine St', '9191911911'),
('B005', 'E110', '890 Maple St', '9191911911');

CREATE TABLE Employees (employee_id varchar(255) PRIMARY KEY,
    emp_name VARCHAR(255),
    position VARCHAR(100) NOT NULL,
    salary INT ,
    branch_id varchar(255),
    FOREIGN KEY (branch_id) REFERENCES Branches(branch_id));
    
INSERT INTO Employees  VALUES
('E101', 'John Doe', 'Clerk', 60000, 'B001'),
('E102', 'Jane Smith', 'Clerk', 45000, 'B002'),
('E103', 'Mike Johnson', 'Librarian', 55000, 'B001'),
('E104', 'Emily Davis', 'Assistant', 40000, 'B001'),
('E105', 'Sarah Brown', 'Assistant', 42000, 'B001'),
('E106', 'Michelle Ramirez', 'Assistant', 43000, 'B001'),
('E107', 'Michael Thompson', 'Clerk', 62000, 'B005'),
('E108', 'Jessica Taylor', 'Clerk', 46000, 'B004'),
('E109', 'Daniel Anderson', 'Manager', 57000, 'B003'),
('E110', 'Laura Martinez', 'Manager', 41000, 'B005'),
('E111', 'Christopher Lee', 'Assistant', 65000, 'B005');

CREATE TABLE Members (
    member_name VARCHAR(255) ,
    member_id varchar(255) PRIMARY KEY,
    member_address VARCHAR(255) ,
    registration_date DATE );
    
INSERT INTO Members  VALUES
('C101', 'Alice Johnson', '123 Main St', '2021-05-15'),
('C102', 'Bob Smith', '456 Elm St', '2021-06-20'),
('C103', 'Carol Davis', '789 Oak St', '2021-07-10'),
('C104', 'Dave Wilson', '567 Pine St', '2021-08-05'),
('C105', 'Eve Brown', '890 Maple St', '2021-09-25'),
('C106', 'Frank Thomas', '234 Cedar St', '2021-10-15'),
('C107', 'Grace Taylor', '345 Walnut St', '2021-11-20'),
('C108', 'Henry Anderson', '456 Birch St', '2021-12-10'),
('C109', 'Ivy Martinez', '567 Oak St', '2022-01-05'),
('C110', 'Jack Wilson', '678 Pine St', '2022-02-25'),
('C118', 'Sam', '133 Pine St', '2024-06-01'),
('C119', 'John', '143 Main St', '2024-05-01');


CREATE TABLE Issued_Books (
    issue_id VARCHAR(255) PRIMARY KEY,
    issued_member_id VARCHAR(255),
    issued_book_name VARCHAR(255),
    issue_date DATE NOT NULL,
    issued_book_isbn VARCHAR(255),
    issued_emp_id VARCHAR(255)
);
	-- FOREIGN KEY  issued_books(issued_book_isbn) REFERENCES Books(isbn),
	-- FOREIGN KEY issued_books(member_id) REFERENCES Members(member_id)

INSERT INTO issued_books VALUES
('IS106', 'C106', 'Animal Farm', '2024-03-10', '978-0-330-25864-8', 'E104'),
('IS107', 'C107', 'One Hundred Years of Solitude', '2024-03-11', '978-0-14-118776-1', 'E104'),
('IS108', 'C108', 'The Great Gatsby', '2024-03-12', '978-0-525-47535-5', 'E104'),
('IS109', 'C109', 'Jane Eyre', '2024-03-13', '978-0-141-44171-6', 'E105'),
('IS110', 'C110', 'The Alchemist', '2024-03-14', '978-0-307-37840-1', 'E105'),
('IS111', 'C109', 'Harry Potter and the Sorcerers Stone', '2024-03-15', '978-0-679-76489-8', 'E105'),
('IS112', 'C109', 'A Game of Thrones', '2024-03-16', '978-0-09-957807-9', 'E106'),
('IS113', 'C109', 'A Peoples History of the United States', '2024-03-17', '978-0-393-05081-8', 'E106'),
('IS114', 'C109', 'The Guns of August', '2024-03-18', '978-0-19-280551-1', 'E106'),
('IS115', 'C109', 'The Histories', '2024-03-19', '978-0-14-044930-3', 'E107'),
('IS116', 'C110', 'Guns, Germs, and Steel: The Fates of Human Societies', '2024-03-20', '978-0-393-91257-8', 'E107'),
('IS117', 'C110', '1984', '2024-03-21', '978-0-679-64115-3', 'E107'),
('IS118', 'C101', 'Pride and Prejudice', '2024-03-22', '978-0-14-143951-8', 'E108'),
('IS119', 'C110', 'Brave New World', '2024-03-23', '978-0-452-28240-7', 'E108'),
('IS120', 'C110', 'The Road', '2024-03-24', '978-0-670-81302-4', 'E108'),
('IS121', 'C102', 'The Shining', '2024-03-25', '978-0-385-33312-0', 'E109'),
('IS122', 'C102', 'Fahrenheit 451', '2024-03-26', '978-0-451-52993-5', 'E109'),
('IS123', 'C103', 'Dune', '2024-03-27', '978-0-345-39180-3', 'E109'),
('IS124', 'C104', 'Where the Wild Things Are', '2024-03-28', '978-0-06-025492-6', 'E110'),
('IS125', 'C105', 'The Kite Runner', '2024-03-29', '978-0-06-112241-5', 'E110'),
('IS126', 'C105', 'Charlotte\'s Web', '2024-03-30', '978-0-06-440055-8', 'E110'),
('IS127', 'C105', 'Beloved', '2024-03-31', '978-0-679-77644-3', 'E110'),
('IS128', 'C105', 'A Tale of Two Cities', '2024-04-01', '978-0-14-027526-3', 'E110'),
('IS129', 'C105', 'The Stand', '2024-04-02', '978-0-7434-7679-3', 'E110'),
('IS130', 'C106', 'Moby Dick', '2024-04-03', '978-0-451-52994-2', 'E101'),
('IS131', 'C106', 'To Kill a Mockingbird', '2024-04-04', '978-0-06-112008-4', 'E101'),
('IS132', 'C106', 'The Hobbit', '2024-04-05', '978-0-7432-7356-4', 'E106'),
('IS133', 'C107', 'Angels & Demons', '2024-04-06', '978-0-7432-4722-5', 'E106'),
('IS134', 'C107', 'The Diary of a Young Girl', '2024-04-07', '978-0-375-41398-8', 'E106'),
('IS135', 'C107', 'Sapiens: A Brief History of Humankind', '2024-04-08', '978-0-307-58837-1', 'E108'),
('IS136', 'C107', '1491: New Revelations of the Americas Before Columbus', '2024-04-09', '978-0-7432-7357-1', 'E102'),
('IS137', 'C107', 'The Catcher in the Rye', '2024-04-10', '978-0-553-29698-2', 'E103'),
('IS138', 'C108', 'The Great Gatsby', '2024-04-11', '978-0-525-47535-5', 'E104'),
('IS139', 'C109', 'Harry Potter and the Sorcerers Stone', '2024-04-12', '978-0-679-76489-8', 'E105');


CREATE TABLE Return_status (
    return_id varchar(255) PRIMARY KEY,
	issued_id varchar(255),
    return_book_name varchar(255),
    return_date DATE NOT NULL,
    return_book_isbn varchar(200));
    
INSERT INTO Return_status  VALUES
('RS101', 'IS101', NULL, '2023-06-06', NULL),
('RS102', 'IS105', NULL, '2023-06-07', NULL),
('RS103', 'IS103', NULL, '2023-08-07', NULL),
('RS104', 'IS106', NULL, '2024-05-01', NULL),
('RS105', 'IS107', NULL, '2024-05-03', NULL),
('RS106', 'IS108', NULL, '2024-05-05', NULL),
('RS107', 'IS109', NULL, '2024-05-07', NULL),
('RS108', 'IS110', NULL, '2024-05-09', NULL),
('RS109', 'IS111', NULL, '2024-05-11', NULL),
('RS110', 'IS112', NULL, '2024-05-13', NULL),
('RS111', 'IS113', NULL, '2024-05-15', NULL),
('RS112', 'IS114', NULL, '2024-05-17', NULL),
('RS113', 'IS115', NULL, '2024-05-19', NULL),
('RS114', 'IS116', NULL, '2024-05-21', NULL),
('RS115', 'IS117', NULL, '2024-05-23', NULL),
('RS116', 'IS118', NULL, '2024-05-25', NULL),
('RS117', 'IS119', NULL, '2024-05-27', NULL),
('RS118', 'IS120', NULL, '2024-05-29', NULL);


-- Analytical Queries
 -- 1. How many books are currently available in the library?
SELECT COUNT(*) AS available_books FROM Books WHERE status = 'Yes';
-------------------------------------------------------------------------

-- 2. What is the total rental income generated by all books?
SELECT SUM(rental_price) AS total_rental_income FROM Books;
-------------------------------------------------------------------------

-- 3. Which branch has the highest number of employees?
SELECT branch_id, COUNT(*) AS employee_count 
FROM Employees 
GROUP BY branch_id 
ORDER BY employee_count DESC 
LIMIT 1;
-------------------------------------------------------------------------

-- 4. Which books have been issued the most?
select max(issued_book_name) as issued_book from issued_books
order by issued_book_name desc
Limit 3; 
-------------------------------------------------------------------------

-- 5. What is the average rental price of books by category?
SELECT category, AVG(rental_price) AS average_rental_price 
FROM Books 
GROUP BY category;
-------------------------------------------------------------------------
 
-- 6. Which employee has issued the most number of books?
SELECT e.employee_id, e.emp_name, COUNT(i.issued_emp_id) AS total_books_issued
FROM Employees as e
JOIN Issued_books as i ON e.employee_id = i.issued_emp_id
GROUP BY e.employee_id, e.emp_name
ORDER BY total_books_issued DESC
LIMIT 1;
-------------------------------------------------------------------------

-- 7.Total Number of Books Returned in the Last Month
SELECT COUNT(*) AS total_books_returned
FROM return_status
WHERE return_date= YEAR(CURDATE() );
-------------------------------------------------------------------------

use librarymanagementsystem;
show tables;

-- 8.List the Members Who Have Rented Books but Not Yet Returned Them
select * from return_status;
SELECT DISTINCT m.member_id, m.member_name
FROM Members m
JOIN Issued_Books ib ON m.member_id = ib.issued_member_id
LEFT JOIN return_status r ON r.issued_id = ib.issue_id
WHERE r.issued_id IS NULL;


select * from Return_Status;
-------------------------------------------------------------------------

-- 9. Total Rental Income Generated by a Particular Branch
SELECT e.branch_id,
SUM(b.rental_price) AS total_rental_income
FROM Issued_Books ib
JOIN Books b ON ib.issued_book_isbn = b.isbn
JOIN Employees e ON ib.issued_emp_id = e.employee_id
WHERE e.branch_id = 'B001'  -- Replace ? with the specific branch ID
GROUP BY e.branch_id;

SELECT e.branch_id,
SUM(b.rental_price) AS total_rental_income
FROM Issued_Books ib
JOIN Books b ON ib.issued_book_isbn = b.isbn
JOIN Employees e ON ib.issued_emp_id = e.employee_id
WHERE e.branch_id = 'B002'  -- Replace ? with the specific branch ID
GROUP BY e.branch_id;

SELECT e.branch_id,
SUM(b.rental_price) AS total_rental_income
FROM Issued_Books ib
JOIN Books b ON ib.issued_book_isbn = b.isbn
JOIN Employees e ON ib.issued_emp_id = e.employee_id
WHERE e.branch_id = 'B003'  -- Replace ? with the specific branch ID
GROUP BY e.branch_id;

SELECT e.branch_id,
SUM(b.rental_price) AS total_rental_income
FROM Issued_Books ib
JOIN Books b ON ib.issued_book_isbn = b.isbn
JOIN Employees e ON ib.issued_emp_id = e.employee_id
WHERE e.branch_id = 'B004'  -- Replace ? with the specific branch ID
GROUP BY e.branch_id;

SELECT e.branch_id,
SUM(b.rental_price) AS total_rental_income
FROM Issued_Books ib
JOIN Books b ON ib.issued_book_isbn = b.isbn
JOIN Employees e ON ib.issued_emp_id = e.employee_id
WHERE e.branch_id = 'B005'  -- Replace ? with the specific branch ID
GROUP BY e.branch_id;

SELECT e.branch_id,
SUM(b.rental_price) AS total_rental_income
FROM Issued_Books ib
JOIN Books b ON ib.issued_book_isbn = b.isbn
JOIN Employees e ON ib.issued_emp_id = e.employee_id
WHERE e.branch_id = 'B006'  -- Replace ? with the specific branch ID
GROUP BY e.branch_id;
-------------------------------------------------------------------------

-- 10. Which Book Has Been Rented the Longest Without Being Returned?
SELECT 
    ib.issued_book_name AS Book_Name,
    ib.issue_date AS Issue_Date,
    DATEDIFF(CURDATE(), ib.issue_date) AS Days_Rented
FROM 
    Issued_Books ib
LEFT JOIN 
    return_status rs 
ON 
    ib.issue_id = rs.issued_id
WHERE 
    rs.issued_id IS NULL
ORDER BY 
    Days_Rented DESC
LIMIT 1;












