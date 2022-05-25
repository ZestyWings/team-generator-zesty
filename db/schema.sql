DROP DATABASE IF EXISTS employeesDb;
CREATE DATABASE employeesDb;

USE employeesDb;

CREATE TABLE departments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(30) NOT NULL
)

CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    -- saw multiple ways how this was written didn't quite understand it 
    FOREIGN KEY (department_id),
)

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (role_id),
    manager_id INT,
    FOREIGN KEY (manager_id)
);