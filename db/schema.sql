-- this allows you to drop the existing database if it exists
DROP DATABASE IF EXISTS employees_information_db;

-- this allows you to create a new database
CREATE DATABASE employees_information_db;

-- this is so you can use the newly created database
USE employees_information_db;

-- this is where the department table will be created
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

-- this is where the role table will be created
CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY (id)
);

-- this is where the employee table will be created
CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    PRIMARY KEY (id)
);
