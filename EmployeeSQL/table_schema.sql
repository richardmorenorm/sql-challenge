drop table titles cascade;
drop table dept_emp cascade;
drop table employees cascade;
drop table departments cascade;
drop table dept_emp cascade;
drop table dept_manager cascade;
drop table salaries cascade;

create table titles (
	title_id varchar primary key not null,
	title varchar not null
	);

create table employees (
	emp_no int primary key not null,
	emp_title_id varchar not null,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null
	);

create table departments (
	dept_no varchar primary key,
	dept_name varchar not null
	);

create table dept_emp (
	emp_no int not null REFERENCES employees(emp_no),
	dept_no varchar not null REFERENCES departments(dept_no)
	);

create table dept_manager (
	dept_no varchar not null,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no int primary key not null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);

create table salaries (
	emp_no int primary key not null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary int not null
	);