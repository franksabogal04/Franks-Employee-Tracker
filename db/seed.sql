-- Use the employees_information_db database
USE employees_information_db;

-- Insert departments
INSERT INTO department (name) VALUES ("Kitchen");
INSERT INTO department (name) VALUES ("On-Floor");
INSERT INTO department (name) VALUES ("Security");
INSERT INTO department (name) VALUES ("Manager");

-- Insert roles
INSERT INTO role (department_id, title, salary)
VALUES (
    1, -- Department ID for "Kitchen"
    "Cook",
    45000.00
);

INSERT INTO role (department_id, title, salary)
VALUES (
    2, -- Department ID for "On-Floor"
    "Server",
    50000.00
);

INSERT INTO role (department_id, title, salary)
VALUES (
    2, -- Department ID for "On-Floor"
    "Shift Leader",
    60000
);

INSERT INTO role (department_id, title, salary)
VALUES (
    4, -- Department ID for "Manager"
    "Manager",
    70000
);

INSERT INTO role (department_id, title, salary)
VALUES (
    2, -- Department ID for "On-Floor"
    "Busser",
    40000.00
);

INSERT INTO role (department_id, title, salary)
VALUES (
    1, -- Department ID for "Kitchen"
    "Take-out",
    25000.00
);

INSERT INTO role (department_id, title, salary)
VALUES (
    3, -- Department ID for "Security"
    "Security",
    50000.00
);

-- Insert employees
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Sabogal", 1, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Daniela", "Zapata", 3, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Michael", "Borda", 2, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Claudia", "Rodriguez", 4, NULL);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Franklin", "Smith", 1, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Juan", "Guavera", 4, NULL);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Daniel", "Joseph", 4, NULL);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Michelle", "Andel", 2, 4);
