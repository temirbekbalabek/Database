CREATE INDEX name_string ON countries (name);

CREATE INDEX name_surname ON employees (name,surname);

CREATE UNIQUE INDEX salary1 ON employees (salary);

CREATE INDEX name_substr ON employees (substr(name from 1 for 4));

CREATE INDEX departments_depid_budget ON departments (department_id, budget);

CREATE INDEX employees_salary ON employees (department_id, salary);
