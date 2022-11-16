
CREATE TABLE departments(
    department_id INTEGER PRIMARY KEY,
    department_name CHARACTER VARYING(30) NOT NULL,
    manager_id INTEGER
);

CREATE TABLE jobs(
    job_id CHARACTER VARYING(15) PRIMARY KEY ,
    job_name CHARACTER VARYING(50)
);


CREATE TABLE employees(
    employee_id INTEGER PRIMARY KEY,
    first_name CHARACTER VARYING(30),
    last_name CHARACTER VARYING(30),
    middle_name CHARACTER VARYING(30) DEFAULT NULL,
    birth_date DATE NOT NULL,
    hire_date DATE NOT NULL,
    job_id CHARACTER VARYING(15),
    department_id INTEGER,
    emp_lvl CHARACTER VARYING(10),
    salary DECIMAL(10, 2),
    emp_priv BOOLEAN DEFAULT FALSE,
    CONSTRAINT fk_job_id FOREIGN KEY(job_id) REFERENCES jobs(job_id),
    CONSTRAINT fk_dep_id FOREIGN KEY (department_id) REFERENCES departments(department_id),
    CONSTRAINT check_salary_positive CHECK ( salary > 0 )
);

CREATE TABLE emp_results(
    employee_id INTEGER,
    i_kv CHARACTER VARYING(2),
    ii_kv CHARACTER VARYING(2),
    iii_kv CHARACTER VARYING(2),
    iv_kv CHARACTER VARYING(2),
    CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
