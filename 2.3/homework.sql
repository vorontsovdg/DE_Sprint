/* 5. Ваша команда расширяется и руководство запланировало открыть новый отдел – отдел Интеллектуального анализа данных.
На начальном этапе в команду наняли одного руководителя отдела и двух сотрудников.
Добавьте необходимую информацию в соответствующие таблицы.
 */

--Вставляем инфо по отделу. Важно! Неполную - иначе констрейнт бросит исключение
INSERT INTO departments (department_id, department_name)
VALUES (280, 'Data Mining');

--Инфо в название джобы
INSERT INTO jobs (job_id, job_name) VALUES ('IT_DM', 'Data Engineer');

--Инфо о самих сотрудниках
INSERT INTO employees
VALUES
(207, 'Ivan', 'Ivanov', 'Ivanovitch', '1984-01-05', '2022-08-01', 'IT_DM', 280, 'LEAD', 10500, TRUE),
(208, 'Petr', 'Petrov', 'Petrovich', '1988-12-10', '2022-08-07', 'IT_DM', 280, 'SENIOR', 8000, TRUE),
(209, 'Viktor', 'Sidorov', 'Vladimirovich', '1985-05-01', '2022-08-16', 'IT_DM', 280, 'MIDDLE', 6500, TRUE);

--Инфо с оценками их работы(т.к. принимали их в августе, то оценок за 1 и 2 кв нет)
INSERT INTO emp_results (employee_id, iii_kv, iv_kv)
VALUES
(207, 'A', 'B'),
(208, 'A', 'C'),
(209, 'A', 'C');

--Апдейтим отделы, добавляем id руководителя
UPDATE departments
SET manager_id = 207
WHERE department_id = 280;

--проверка
SELECT * FROM employees WHERE employee_id >= 207;
SELECT * FROM departments WHERE department_id = 280;

/*
   6. Теперь пришла пора анализировать наши данные – напишите запросы для получения следующей информации:
   6.1 Уникальный номер сотрудника, его ФИО и стаж работы – для всех сотрудников компании
 */

SELECT
    employee_id
    , CONCAT(first_name, ' ', last_name, ' ', middle_name) AS fio
    , DATE_PART('year', CURRENT_DATE) - DATE_PART('year', hire_date) AS work_experience--опыт работы брал в годах
FROM employees;

/*
 6.2 Уникальный номер сотрудника, его ФИО и стаж работы – только первых 3-х сотрудников
 */

SELECT
    employee_id
    , CONCAT(first_name, ' ', last_name, ' ', middle_name) AS fio
    , DATE_PART('year', CURRENT_DATE) - DATE_PART('year', hire_date) AS work_experience
FROM employees
LIMIT 3;

/*
 6.3 Уникальный номер сотрудников - водителей
 В БД водителей не оказалось, выбрал только сотрудников отдела доставки
 */

SELECT
    employee_id
    , CONCAT(first_name, ' ', last_name, ' ', middle_name) AS fio
    , DATE_PART('year', CURRENT_DATE) - DATE_PART('year', hire_date) AS work_experience
FROM employees e inner join departments d on e.department_id = d.department_id
WHERE d.department_name ='Shipping';

/*
 6.4 Выведите номера сотрудников, которые хотя бы за 1 квартал получили оценку D или E
 */
 WITH bad_marks AS (
     SELECT employee_id
     FROM emp_results
     WHERE i_kv IN ('D', 'E')
     UNION
     SELECT employee_id
     FROM emp_results
     WHERE ii_kv IN ('D', 'E')
     UNION
     SELECT employee_id
     FROM emp_results
     WHERE iii_kv IN ('D', 'E')
     UNION
     SELECT employee_id
     FROM emp_results
     WHERE iv_kv IN ('D', 'E')
 )
SELECT employee_id
FROM employees
WHERE employee_id IN (SELECT * FROM bad_marks);

/*
 6.5 Выведите самую высокую зарплату в компании.
 */
SELECT MAX(salary) AS top_sal
FROM employees;

/*
 6.6 * Выведите название самого крупного отдела
 */

WITH dep_volume AS (
    SELECT
        department_id
        , COUNT(*) AS total_emps
    FROM employees
    GROUP BY department_id
)
SELECT department_name
FROM departments d
INNER JOIN dep_volume v on d.department_id = v.department_id
WHERE v.total_emps = (SELECT MAX(total_emps) from dep_volume);

/*
6.7 * Выведите номера сотрудников от самых опытных до вновь прибывших
 */

SELECT
    employee_id
FROM employees
ORDER BY CURRENT_DATE - hire_date DESC;

/*
 6.8 * Рассчитайте среднюю зарплату для каждого уровня сотрудников
 */
SELECT
      emp_lvl
    , ROUND(avg(salary),2) AS AVG_SALARY
FROM employees
GROUP BY emp_lvl;

/*
 6.9 * Добавьте столбец с информацией о коэффициенте годовой премии к основной таблице. Коэффициент рассчитывается по такой схеме: базовое значение коэффициента – 1, каждая оценка действует на коэффициент так:

·         Е – минус 20%

·         D – минус 10%

·         С – без изменений

·         B – плюс 10%

·         A – плюс 20%

Соответственно, сотрудник с оценками А, В, С, D – должен получить коэффициент 1.2.
 */

ALTER TABLE employees
ADD COLUMN year_pct DECIMAL;

--добавляем сотрудников, тут я только ч\з case смог придумать
WITH EMP_RESULTS_NUMBER AS (
    SELECT
        employee_id,
        CASE WHEN i_kv = 'A' THEN 0.2
            WHEN i_kv = 'B' THEN 0.1
            WHEN i_kv = 'C' THEN 0
            WHEN i_kv = 'D' THEN -0.1
            WHEN i_kv = 'E' THEN -0.2
            ELSE 0
        END AS V1,
        CASE WHEN ii_kv = 'A' THEN 0.2
            WHEN ii_kv = 'B' THEN 0.1
            WHEN ii_kv = 'C' THEN 0
            WHEN ii_kv = 'D' THEN -0.1
            WHEN ii_kv = 'E' THEN -0.2
            ELSE 0
        END AS V2,
        CASE WHEN iii_kv = 'A' THEN 0.2
            WHEN iii_kv = 'B' THEN 0.1
            WHEN iii_kv = 'C' THEN 0
            WHEN iii_kv = 'D' THEN -0.1
            WHEN iii_kv = 'E' THEN -0.2
            ELSE 0
        END AS V3,
        CASE WHEN iv_kv = 'A' THEN 0.2
            WHEN iv_kv = 'B' THEN 0.1
            WHEN iv_kv = 'C' THEN 0
            WHEN iv_kv = 'D' THEN -0.1
            WHEN iv_kv = 'E' THEN -0.2
            ELSE 0
        END AS V4
    FROM emp_results),
emp_pct_table AS (
    SELECT employee_id,
           1 + V1 + V2 + V3 + V4 AS pct
    FROM EMP_RESULTS_NUMBER
)
UPDATE employees AS e
SET year_pct = t.pct
FROM emp_pct_table AS t
WHERE e.employee_id = t.employee_id;

--Проверяем
SELECT
    employee_id
    , first_name
    , last_name
    , year_pct
FROM employees;
