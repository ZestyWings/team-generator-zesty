use employeesDb;

INSERT INTO departments
(department)
-- SALES
-- FINANCE
-- MARKETING
-- ENGINEERS
VALUES
('Sales'),
('Finance'),
('Marketing'),
('Engineer');

INSERT INTO roles 
(title, salary, department_id)
VALUES
-- Salesperson
-- sales lead
-- accountant 
-- account manager
-- marketing rep
-- marketing manager 
-- junior Engineer
-- senior engineer 
-- ceo 
('Salesperson', 80000, 1),
('Sales Lead', 95000, 1),
('Accountant', 70000, 2),
('Account Manager', 90000, 2),
('Marketing', 60000, 3),
('Marketing Manager', 85000, 3),
('Junior Engineer', 70000, 4),
('Senior Engineer', 100000, 4),
('CEO', 150000, 5);

INSERT INTO employees 
(first_name, last_name, role_id, manager_id)
VALUES
('Johnny', 'Cash', 1, NULL),
('Doja', 'Cat', 1, 1),
('Jackie', 'Chan', 2, NULL),
('Bruce', 'Lee', 2, 1),
('Martha', 'Stewart', 3, NULL),
('Snoop', 'Dogg', 3, 1),
('Tim', 'Cook', 4, NULL),
('Steve', 'Jobs', 4, 1);

 


