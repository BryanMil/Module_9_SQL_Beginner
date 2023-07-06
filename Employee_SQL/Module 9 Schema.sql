Drop Table titles;
Drop Table employees;
Drop Table dept_emp;
Drop Table salaries;
Drop Table departments;
Drop Table dept_manager;

-- Schema to create tables Module 9 

Create Table titles(
  title_id VARCHAR(10) PRIMARY KEY,
  title VARCHAR(20)
);

SELECT * FROM titles;

Create Table employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(10),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date Date,
	first_name VARCHAR(30),
    last_name VARCHAR(30),
	sex CHAR(2),
	hire_date Date
);

 SELECT * FROM employees;
 
 Create Table dept_emp (
  emp_no INT,
  dept_no VARCHAR(30),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  PRIMARY KEY (emp_no, dept_no)
  );

SELECT * FROM dept_emp;

CREATE TABLE salaries (
  emp_no INT Primary Key,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  salary INT
);

SELECT * FROM salaries;

---------
CREATE TABLE departments (
  dept_no VARCHAR(30)Primary KEY,
  dept_name VARCHAR(30)
  
);

SELECT * FROM departments;

---------


Create Table dept_manager (
  dept_no VARCHAR(30),
  emp_no INT,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  PRIMARY KEY (emp_no, dept_no)
    );
	
INSERT INTO dept_manager(dept_no,emp_no)
Values('d001','110022'),
('d001','110039'),
('d002','110085'),
('d002','110114'),
('d003','110183'),
('d003','110228'),
('d004','110303'),
('d004','110344'),
('d004','110386'),
('d004','110420'),
('d005','110511'),
('d005','110567'),
('d006','110725'),
('d006','110765'),
('d006','110800'),
('d006','110854'),
('d007','111035'),
('d007','111133'),
('d008','111400'),
('d008','111534'),
('d009','111692'),
('d009','111784'),
('d009','111877'),
('d009','111939');

SELECT * FROM dept_manager;




