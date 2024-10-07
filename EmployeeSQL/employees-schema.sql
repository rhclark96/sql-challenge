CREATE TABLE Titles (
	title_id VARCHAR(5),
	title VARCHAR(50), 
	PRIMARY KEY (title_id)
);

CREATE TABLE Employees (
	emp_no integer,
	emp_title_id VARCHAR(5),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(1),
	hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE Salaries (
	emp_no INTEGER, 
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Departments (
	dept_no VARCHAR(4),
	dept_name VARCHAR(50),
	PRIMARY KEY (dept_no)
);

CREATE TABLE Dept_Emp (
	emp_no INTEGER,
	dept_no VARCHAR(4),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE Dept_Manager(
	dept_no VARCHAR(4),
	emp_no INTEGER,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);