/*
a.     Попробуйте вывести не просто самую высокую зарплату во всей команде,
а вывести именно фамилию сотрудника с самой высокой зарплатой.
 */

SELECT first_name
     , last_name
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

/*
 b.     Попробуйте вывести фамилии сотрудников в алфавитном порядке
 */
SELECT last_name
FROM employees
ORDER BY 1;

/*
 c.     Рассчитайте средний стаж для каждого уровня сотрудников
 */

SELECT emp_lvl
     , ROUND(AVG(CURRENT_DATE - hire_date), 2) AS AVG_WORK_EXP
FROM employees
GROUP BY emp_lvl;
--2-й вариант (в годах)

SELECT emp_lvl
     , avg(date_part('year', current_date) - date_part('year', hire_date)) as avg_work_exp
FROM employees
GROUP BY emp_lvl;

/*
 Выведите фамилию сотрудника и название отдела, в котором он работает
 */

SELECT e.last_name
     , d.department_name
FROM employees e
         INNER JOIN departments d on e.department_id = d.department_id;

/*
 Выведите название отдела и фамилию сотрудника с самой высокой зарплатой в данном отделе и саму зарплату также.
 */

WITH rank_by_salary AS (SELECT first_name
                             , last_name
                             , salary
                             , department_id
                             , RANK() OVER (PARTITION BY department_id ORDER BY salary DESC ) AS n_pos
                        FROM employees)
SELECT d.department_name
     , r.first_name
     , r.last_name
     , r.salary
FROM rank_by_salary r
         INNER JOIN departments d ON r.department_id = d.department_id
WHERE r.n_pos = 1;

/*
 f.      *Выведите название отдела, сотрудники которого получат наибольшую премию по итогам года.
 Как рассчитать премию можно узнать в последнем задании предыдущей домашней работы
 */

WITH bonus AS (SELECT d.department_name
                    , d.department_id
                    , SUM(e.salary * e.year_pct) AS bonus_val
               FROM employees e
                        INNER JOIN departments d on e.department_id = d.department_id
               GROUP BY d.department_name, d.department_id)
SELECT department_name
FROM bonus
WHERE bonus_val = (SELECT MAX(bonus_val) FROM bonus);

/*
 g.    *Проиндексируйте зарплаты сотрудников с учетом коэффициента премии.
 Для сотрудников с коэффициентом премии больше 1.2 – размер индексации составит 20%,
 для сотрудников с коэффициентом премии от 1 до 1.2 размер индексации составит 10%.
 Для всех остальных сотрудников индексация не предусмотрена.
 */

--т.к. в след задании нам будет нужна зп до индексации, я добавил индексированную зп в отдельный столбец

ALTER TABLE employees
    ADD COLUMN salary_new NUMERIC(10, 2);

WITH NEW_SALARY AS (SELECT employee_id
                         , CASE
                               WHEN year_pct > 1.2 THEN 1.2
                               WHEN year_pct >= 1 THEN 1.1
                               ELSE 1
                               END * salary AS NEW_SAL
                    FROM employees)
UPDATE employees AS e
SET salary_new = n.NEW_SAL
FROM NEW_SALARY AS n
WHERE e.employee_id = n.employee_id;


/*
 h.    ***По итогам индексации отдел финансов хочет получить следующий отчет: вам необходимо на уровень каждого отдела вывести следующую информацию:
i.     Название отдела
ii.     Фамилию руководителя
iii.     Количество сотрудников
iv.     Средний стаж
v.     Средний уровень зарплаты
vi.     Количество сотрудников уровня junior
vii.     Количество сотрудников уровня middle
viii.     Количество сотрудников уровня senior
ix.     Количество сотрудников уровня lead
x.     Общий размер оплаты труда всех сотрудников до индексации
xi.     Общий размер оплаты труда всех сотрудников после индексации
xii.     Общее количество оценок А
xiii.     Общее количество оценок B
xiv.     Общее количество оценок C
xv.     Общее количество оценок D
xvi.     Общее количество оценок Е
xvii.     Средний показатель коэффициента премии
xviii.     Общий размер премии.
xix.     Общую сумму зарплат(+ премии) до индексации
xx.     Общую сумму зарплат(+ премии) после индексации(премии не индексируются)
xxi.     Разницу в % между предыдущими двумя суммами(первая/вторая)
 */

CREATE VIEW ACCOUNTING_REPORT AS
(
WITH managers AS (SELECT d.department_id
                       , e2.last_name
                  FROM departments d
                           LEFT JOIN employees e2 on d.manager_id = e2.employee_id)
SELECT d.department_name,
       m.last_name
        ,
       COUNT(e.employee_id)                                                         AS NUMBER_OF_EMPLOYEES,
       ROUND(AVG(date_part('year', current_date) - date_part('year', e.hire_date))) AS AVG_WORK_EXP,
       ROUND(avg(E.salary_new))                                                     AS AVG_SALARY,
       SUM(CASE WHEN e.emp_lvl = 'JUN' THEN 1 ELSE 0 END)                           AS JUN,
       SUM(CASE WHEN e.emp_lvl = 'MIDDLE' THEN 1 ELSE 0 END)                        AS MIDDLE,
       SUM(CASE WHEN e.emp_lvl = 'SENIOR' THEN 1 ELSE 0 END)                        AS SENIOR,
       SUM(CASE WHEN e.emp_lvl = 'LEAD' THEN 1 ELSE 0 END)                          AS LEAD,
       SUM(e.salary)                                                                AS SALARY_BEFORE_INDX,
       SUM(e.salary_new)                                                            AS SALARY_AFTER_INDEX,
       SUM(
                   (CASE WHEN er.i_kv = 'A' THEN 1 ELSE 0 END) +
                   (CASE WHEN er.ii_kv = 'A' THEN 1 ELSE 0 END) +
                   (CASE WHEN er.iii_kv = 'A' THEN 1 ELSE 0 END) +
                   (CASE WHEN er.iv_kv = 'A' THEN 1 ELSE 0 END)
           )                                                                        AS A_SUM,
       SUM(
                   (CASE WHEN er.i_kv = 'B' THEN 1 ELSE 0 END) +
                   (CASE WHEN er.ii_kv = 'B' THEN 1 ELSE 0 END) +
                   (CASE WHEN er.iii_kv = 'B' THEN 1 ELSE 0 END) +
                   (CASE WHEN er.iv_kv = 'B' THEN 1 ELSE 0 END)
           )                                                                        AS B_SUM,
       SUM(
                   (CASE WHEN er.i_kv = 'C' THEN 1 ELSE 0 END) +
                   (CASE WHEN er.ii_kv = 'C' THEN 1 ELSE 0 END) +
                   (CASE WHEN er.iii_kv = 'C' THEN 1 ELSE 0 END) +
                   (CASE WHEN er.iv_kv = 'C' THEN 1 ELSE 0 END)
           )                                                                        AS C_SUM,
       SUM(
                   (CASE WHEN er.i_kv = 'D' THEN 1 ELSE 0 END) +
                   (CASE WHEN er.ii_kv = 'D' THEN 1 ELSE 0 END) +
                   (CASE WHEN er.iii_kv = 'D' THEN 1 ELSE 0 END) +
                   (CASE WHEN er.iv_kv = 'D' THEN 1 ELSE 0 END)
           )                                                                        AS D_SUM,
       SUM(
                   (CASE WHEN er.i_kv = 'E' THEN 1 ELSE 0 END) +
                   (CASE WHEN er.ii_kv = 'E' THEN 1 ELSE 0 END) +
                   (CASE WHEN er.iii_kv = 'E' THEN 1 ELSE 0 END) +
                   (CASE WHEN er.iv_kv = 'E' THEN 1 ELSE 0 END)
           )                                                                        AS E_TOTAL,
       ROUND(AVG(e.year_pct), 2)                                                    AS BONUS_COEF,
       SUM(e.salary * e.year_pct)                                                   AS TOTAL_BONUS,
       SUM(e.salary + e.salary * e.year_pct)                                        AS FOT_BEFORE_INDX,
       SUM(e.salary_new + e.salary * e.year_pct)                                    AS FOT_AFTER_INDX,
       ROUND(SUM(e.salary_new + e.salary * e.year_pct) / SUM(e.salary + e.salary * e.year_pct) *
             100)                                                                   AS growth_percentage
FROM departments d
         LEFT JOIN managers m ON d.department_id = m.department_id
         LEFT JOIN employees e on d.department_id = e.department_id
         INNER JOIN emp_results er on e.employee_id = er.employee_id
GROUP BY d.department_name, m.last_name
HAVING COUNT(e.employee_id) > 0
ORDER BY d.department_name);

SELECT *
FROM ACCOUNTING_REPORT;
