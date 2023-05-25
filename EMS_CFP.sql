CREATE DATABASE EmployeeManagementSystem;



CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Department VARCHAR(50)
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    Location VARCHAR(100)
);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    StartDate DATE,
    EndDate DATE
);

CREATE TABLE EmployeeProjects (
    EmployeeID INT,
    ProjectID INT,
    CONSTRAINT FK_EmployeeProjects_EmployeeID FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID),
    CONSTRAINT FK_EmployeeProjects_ProjectID FOREIGN KEY (ProjectID) REFERENCES Projects (ProjectID)
);

CREATE TABLE Salaries (
    EmployeeID INT,
    Salary DECIMAL(10, 2),
    CONSTRAINT FK_Salaries_EmployeeID FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Department)
VALUES
    (1, 'John', 'Doe', 'johndoe@example.com', 'HR'),
    (2, 'Jane', 'Smith', 'janesmith@example.com', 'Finance'),
    (3, 'Michael', 'Johnson', 'michaeljohnson@example.com', 'Sales'),
    (4, 'Emily', 'Williams', 'emilywilliams@example.com', 'Marketing'),
    (5, 'David', 'Brown', 'davidbrown@example.com', 'IT'),
    (6, 'Sarah', 'Taylor', 'sarahtaylor@example.com', 'HR'),
    (7, 'Robert', 'Anderson', 'robertanderson@example.com', 'Finance'),
    (8, 'Jennifer', 'Lee', 'jenniferlee@example.com', 'Sales'),
    (9, 'Christopher', 'Thomas', 'christopherthomas@example.com', 'Marketing'),
    (10, 'Amy', 'Robinson', 'amyrobinson@example.com', 'IT'),
    (11, 'Daniel', 'Walker', 'danielwalker@example.com', 'HR'),
    (12, 'Michelle', 'Harris', 'michelleharris@example.com', 'Finance'),
    (13, 'Matthew', 'Clark', 'matthewclark@example.com', 'Sales'),
    (14, 'Laura', 'Lewis', 'lauralewis@example.com', 'Marketing'),
    (15, 'James', 'Hall', 'jameshall@example.com', 'IT'),
    (16, 'Jessica', 'Young', 'jessicayoung@example.com', 'HR'),
    (17, 'Andrew', 'King', 'andrewking@example.com', 'Finance'),
    (18, 'Emily', 'Wright', 'emilywright@example.com', 'Sales'),
    (19, 'William', 'Turner', 'williamturner@example.com', 'Marketing'),
    (20, 'Olivia', 'Scott', 'oliviascott@example.com', 'IT');

	INSERT INTO Departments (DepartmentID, DepartmentName, Location)
VALUES
    (1, 'HR', 'New York'),
    (2, 'Finance', 'London'),
    (3, 'Sales', 'Chicago'),
    (4, 'Marketing', 'Los Angeles'),
    (5, 'IT', 'San Francisco'),
    (6, 'Operations', 'Tokyo'),
    (7, 'Research and Development', 'Berlin'),
    (8, 'Customer Service', 'Paris'),
    (9, 'Supply Chain', 'Sydney'),
    (10, 'Quality Assurance', 'Toronto'),
    (11, 'Legal', 'Madrid'),
    (12, 'Human Resources', 'Moscow'),
    (13, 'Public Relations', 'Mumbai'),
    (14, 'Product Management', 'Dubai'),
    (15, 'Engineering', 'Seoul'),
    (16, 'Administration', 'Amsterdam'),
    (17, 'Training and Development', 'Stockholm'),
    (18, 'Business Development', 'Hong Kong'),
    (19, 'Procurement', 'Sao Paulo'),
    (20, 'Information Security', 'Zurich')

	INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate)
VALUES
    (1, 'Project A', '2023-01-01', '2023-06-30'),
    (2, 'Project B', '2023-02-01', '2023-07-31'),
    (3, 'Project C', '2023-03-01', '2023-08-31'),
    (4, 'Project D', '2023-04-01', '2023-09-30'),
    (5, 'Project E', '2023-05-01', '2023-10-31'),
    (6, 'Project F', '2023-06-01', '2023-11-30'),
    (7, 'Project G', '2023-07-01', '2023-12-31'),
    (8, 'Project H', '2023-08-01', '2024-01-31'),
    (9, 'Project I', '2023-09-01', '2024-02-29'),
    (10, 'Project J', '2023-10-01', '2024-03-31'),
    (11, 'Project K', '2023-11-01', '2024-04-30'),
    (12, 'Project L', '2023-12-01', '2024-05-31'),
    (13, 'Project M', '2024-01-01', '2024-06-30'),
    (14, 'Project N', '2024-02-01', '2024-07-31'),
    (15, 'Project O', '2024-03-01', '2024-08-31'),
    (16, 'Project P', '2024-04-01', '2024-09-30'),
    (17, 'Project Q', '2024-05-01', '2024-10-31'),
    (18, 'Project R', '2024-06-01', '2024-11-30'),
    (19, 'Project S', '2024-07-01', '2024-12-31'),
    (20, 'Project T', '2024-08-01', '2025-01-31');

	INSERT INTO EmployeeProjects (EmployeeID, ProjectID)
VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 2),
    (5, 3),
    (6, 3),
    (7, 4),
    (8, 4),
    (9, 5),
    (10, 5),
    (11, 6),
    (12, 6),
    (13, 7),
    (14, 7),
    (15, 8),
    (16, 8),
    (17, 9),
    (18, 9),
    (19, 10),
    (20, 10);

	INSERT INTO Salaries (EmployeeID, Salary)
VALUES
    (1, 5000),
    (2, 6000),
    (3, 5500),
    (4, 7000),
    (5, 5200),
    (6, 6300),
    (7, 5800),
    (8, 7200),
    (9, 5400),
    (10, 6500),
    (11, 5900),
    (12, 7400),
    (13, 5100),
    (14, 6200),
    (15, 5700),
    (16, 7100),
    (17, 5300),
    (18, 6400),
    (19, 6000),
    (20, 7500);

	SELECT COUNT(*) AS TotalEmployees FROM Employees;

SELECT AVG(Salary) AS AverageSalary FROM Salaries;

SELECT MAX(Salary) AS MaxSalary FROM Salaries;

SELECT MIN(Salary) AS MinSalary FROM Salaries;

SELECT COUNT(*) AS TotalProjects FROM Projects;

SELECT ProjectName, DATEDIFF(MONTH, StartDate, EndDate) AS DurationMonths FROM Projects;

SELECT CONCAT(LastName, ', ', FirstName) AS FullName FROM Employees;

SELECT Department, AVG(Salary) AS AverageSalary FROM Employees
JOIN Salaries ON Employees.EmployeeID = Salaries.EmployeeID
GROUP BY Department;

SELECT ProjectName, COUNT(*) AS TotalEmployees FROM EmployeeProjects
JOIN Projects ON EmployeeProjects.ProjectID = Projects.ProjectID
GROUP BY ProjectName;
