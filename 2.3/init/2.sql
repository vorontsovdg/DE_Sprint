
INSERT INTO jobs VALUES
   ( 'AD_PRES'
   , 'President'
   );
   INSERT INTO jobs VALUES
   ( 'AD_VP'
   , 'Administration Vice President'
   );

INSERT INTO jobs VALUES
   ( 'AD_ASST'
   , 'Administration Assistant'
   );

INSERT INTO jobs VALUES
   ( 'FI_MGR'
   , 'Finance Manager'
   );

INSERT INTO jobs VALUES
   ( 'FI_ACCOUNT'
   , 'Accountant'
   );

INSERT INTO jobs VALUES
   ( 'AC_MGR'
   , 'Accounting Manager'
   );

INSERT INTO jobs VALUES
   ( 'AC_ACCOUNT'
   , 'Public Accountant'
   );
   INSERT INTO jobs VALUES
   ( 'SA_MAN'
   , 'Sales Manager'
   );

INSERT INTO jobs VALUES
   ( 'SA_REP'
   , 'Sales Representative'
   );

INSERT INTO jobs VALUES
   ( 'PU_MAN'
   , 'Purchasing Manager'
   );

INSERT INTO jobs VALUES
   ( 'PU_CLERK'
   , 'Purchasing Clerk'
   );

INSERT INTO jobs VALUES
   ( 'ST_MAN'
   , 'Stock Manager'
   );
   INSERT INTO jobs VALUES
   ( 'ST_CLERK'
   , 'Stock Clerk'
   );

INSERT INTO jobs VALUES
   ( 'SH_CLERK'
   , 'Shipping Clerk'
   );

INSERT INTO jobs VALUES
   ( 'IT_PROG'
   , 'Programmer'
   );

INSERT INTO jobs VALUES
   ( 'MK_MAN'
   , 'Marketing Manager'
   );

INSERT INTO jobs VALUES
   ( 'MK_REP'
   , 'Marketing Representative'
   );

INSERT INTO jobs VALUES
   ( 'HR_REP'
   , 'Human Resources Representative'
   );

INSERT INTO jobs VALUES
   ( 'PR_REP'
   , 'Public Relations Representative'
   );



INSERT INTO departments VALUES
   ( 10
   , 'Administration'
   , 200
   );

INSERT INTO departments VALUES
   ( 20
   , 'Marketing'
   , 201
   );

   INSERT INTO departments VALUES
   ( 30
   , 'Purchasing'
   , 114
   );

   INSERT INTO departments VALUES
   ( 40
   , 'Human Resources'
   , 203
   );

INSERT INTO departments VALUES
   ( 50
   , 'Shipping'
   , 121
   );

   INSERT INTO departments VALUES
   ( 60
   , 'IT'
   , 103
   );

   INSERT INTO departments VALUES
   ( 70
   , 'Public Relations'
   , 204
   );

   INSERT INTO departments VALUES
   ( 80
   , 'Sales'
   , 145
   );

   INSERT INTO departments VALUES
   ( 90
   , 'Executive'
   , 100
   );

INSERT INTO departments VALUES
   ( 100
   , 'Finance'
   , 108
   );

   INSERT INTO departments VALUES
   ( 110
   , 'Accounting'
   , 205
   );

INSERT INTO departments VALUES
   ( 120
   , 'Treasury'
   , NULL
   );

INSERT INTO departments VALUES
   ( 130
   , 'Corporate Tax'
   , NULL
   );

INSERT INTO departments VALUES
   ( 140
   , 'Control And Credit'
   , NULL
   );

INSERT INTO departments VALUES
   ( 150
   , 'Shareholder Services'
   , NULL
   );

INSERT INTO departments VALUES
   ( 160
   , 'Benefits'
   , NULL
   );

INSERT INTO departments VALUES
   ( 170
   , 'Manufacturing'
   , NULL
   );

INSERT INTO departments VALUES
   ( 180
   , 'Construction'
   , NULL
   );

INSERT INTO departments VALUES
   ( 190
   , 'Contracting'
   , NULL
   );

INSERT INTO departments VALUES
   ( 200
   , 'Operations'
   , NULL
   );

INSERT INTO departments VALUES
   ( 210
   , 'IT Support'
   , NULL
   );

INSERT INTO departments VALUES
   ( 220
   , 'NOC'
   , NULL
   );

INSERT INTO departments VALUES
   ( 230
   , 'IT Helpdesk'
   , NULL
   );

INSERT INTO departments VALUES
   ( 240
   , 'Government Sales'
   , NULL
   );

INSERT INTO departments VALUES
   ( 250
   , 'Retail Sales'
   , NULL
   );

INSERT INTO departments VALUES
   ( 260
   , 'Recruiting'
   , NULL
   );

INSERT INTO departments VALUES
   ( 270
   , 'Payroll'
   , NULL
   );

INSERT INTO employees VALUES
(100, 'Steven', 'King', NULL, '1977-06-19', '2007-06-12', 'AD_PRES', 90, 'LEAD', 24000, TRUE);

INSERT INTO employees VALUES
(101, 'Neena', 'Kochhar', NULL, '1981-09-23', '2009-09-16', 'AD_VP', 90, 'LEAD', 17000, TRUE);

INSERT INTO employees VALUES
(102, 'Lex', 'De Haan', NULL, '1988-01-15', '2013-01-08', 'AD_VP', 90, 'LEAD', 17000, FALSE);

INSERT INTO employees VALUES
(103, 'Alexander', 'Hunold', NULL, '1987-01-04', '2009-12-29', 'IT_PROG', 60, 'SENIOR', 9000, FALSE);

INSERT INTO employees VALUES
(104, 'Bruce', 'Ernst', NULL, '1989-05-21', '2011-05-16', 'IT_PROG', 60, 'MIDDLE', 6000, FALSE);

INSERT INTO employees VALUES
(105, 'David', 'Austin', NULL, '1989-06-27', '2017-06-20', 'IT_PROG', 60, 'MIDDLE', 4800, FALSE);

INSERT INTO employees VALUES
(106, 'Valli', 'Pataballa', NULL, '1993-02-06', '2018-01-31', 'IT_PROG', 60, 'MIDDLE', 4800, TRUE);

INSERT INTO employees VALUES
(107, 'Diana', 'Lorentz', NULL, '1989-02-09', '2019-02-02', 'IT_PROG', 60, 'MIDDLE', 4200, FALSE);

INSERT INTO employees VALUES
(108, 'Nancy', 'Greenberg', NULL, '1986-08-19', '2014-08-12', 'FI_MGR', 100, 'LEAD', 12000, TRUE);

INSERT INTO employees VALUES
(109, 'Daniel', 'Faviet', NULL, '1991-08-17', '2014-08-11', 'FI_ACCOUNT', 100, 'SENIOR', 9000, TRUE);

INSERT INTO employees VALUES
(110, 'John', 'Chen', NULL, '1990-09-30', '2017-09-23', 'FI_ACCOUNT', 100, 'SENIOR', 8200, FALSE);

INSERT INTO employees VALUES
(111, 'Ismael', 'Sciarra', NULL, '1995-10-01', '2017-09-25', 'FI_ACCOUNT', 100, 'SENIOR', 7700, TRUE);

INSERT INTO employees VALUES
(112, 'Jose Manuel', 'Urman', NULL, '1993-03-08', '2018-03-02', 'FI_ACCOUNT', 100, 'SENIOR', 7800, TRUE);

INSERT INTO employees VALUES
(113, 'Luis', 'Popp', NULL, '1993-12-08', '2019-12-02', 'FI_ACCOUNT', 100, 'MIDDLE', 6900, TRUE);

INSERT INTO employees VALUES
(114, 'Den', 'Raphaely', NULL, '1985-12-09', '2014-12-02', 'PU_MAN', 30, 'LEAD', 11000, TRUE);

INSERT INTO employees VALUES
(115, 'Alexander', 'Khoo', NULL, '1988-05-19', '2015-05-13', 'PU_CLERK', 30, 'JUN', 3100, TRUE);

INSERT INTO employees VALUES
(116, 'Shelli', 'Baida', NULL, '1987-12-27', '2017-12-19', 'PU_CLERK', 30, 'JUN', 2900, TRUE);

INSERT INTO employees VALUES
(117, 'Sigal', 'Tobias', NULL, '1994-07-25', '2017-07-19', 'PU_CLERK', 30, 'JUN', 2800, TRUE);

INSERT INTO employees VALUES
(118, 'Guy', 'Himuro', NULL, '1993-11-16', '2018-11-10', 'PU_CLERK', 30, 'JUN', 2600, FALSE);

INSERT INTO employees VALUES
(119, 'Karen', 'Colmenares', NULL, '1996-08-10', '2019-08-05', 'PU_CLERK', 30, 'JUN', 2500, TRUE);

INSERT INTO employees VALUES
(120, 'Matthew', 'Weiss', NULL, '1994-07-19', '2016-07-13', 'ST_MAN', 50, 'SENIOR', 8000, FALSE);

INSERT INTO employees VALUES
(121, 'Adam', 'Fripp', NULL, '1994-04-11', '2017-04-05', 'ST_MAN', 50, 'SENIOR', 8200, FALSE);

INSERT INTO employees VALUES
(122, 'Payam', 'Kaufling', NULL, '1992-05-01', '2015-04-26', 'ST_MAN', 50, 'SENIOR', 7900, FALSE);

INSERT INTO employees VALUES
(123, 'Shanta', 'Vollman', NULL, '1989-10-12', '2017-10-05', 'ST_MAN', 50, 'MIDDLE', 6500, TRUE);

INSERT INTO employees VALUES
(124, 'Kevin', 'Mourgos', NULL, '1995-11-17', '2019-11-11', 'ST_MAN', 50, 'MIDDLE', 5800, FALSE);

INSERT INTO employees VALUES
(125, 'Julia', 'Nayer', NULL, '1993-07-17', '2017-07-11', 'ST_CLERK', 50, 'JUN', 3200, FALSE);

INSERT INTO employees VALUES
(126, 'Irene', 'Mikkilineni', NULL, '1994-09-29', '2018-09-23', 'ST_CLERK', 50, 'JUN', 2700, TRUE);

INSERT INTO employees VALUES
(127, 'James', 'Landry', NULL, '1997-01-14', '2019-01-09', 'ST_CLERK', 50, 'JUN', 2400, TRUE);

INSERT INTO employees VALUES
(128, 'Steven', 'Markle', NULL, '1994-03-10', '2020-03-03', 'ST_CLERK', 50, 'JUN', 2200, TRUE);

INSERT INTO employees VALUES
(129, 'Laura', 'Bissot', NULL, '1988-08-22', '2017-08-15', 'ST_CLERK', 50, 'JUN', 3300, TRUE);

INSERT INTO employees VALUES
(130, 'Mozhe', 'Atkinson', NULL, '1988-11-01', '2017-10-25', 'ST_CLERK', 50, 'JUN', 2800, FALSE);

INSERT INTO employees VALUES
(131, 'James', 'Marlow', NULL, '1991-02-18', '2017-02-11', 'ST_CLERK', 50, 'JUN', 2500, TRUE);

INSERT INTO employees VALUES
(132, 'TJ', 'Olson', NULL, '1996-04-10', '2019-04-05', 'ST_CLERK', 50, 'JUN', 2100, TRUE);

INSERT INTO employees VALUES
(133, 'Jason', 'Mallin', NULL, '1989-06-16', '2016-06-09', 'ST_CLERK', 50, 'JUN', 3300, FALSE);

INSERT INTO employees VALUES
(134, 'Michael', 'Rogers', NULL, '1990-08-28', '2018-08-21', 'ST_CLERK', 50, 'JUN', 2900, FALSE);

INSERT INTO employees VALUES
(135, 'Ki', 'Gee', NULL, '1990-12-14', '2019-12-07', 'ST_CLERK', 50, 'JUN', 2400, FALSE);

INSERT INTO employees VALUES
(136, 'Hazel', 'Philtanker', NULL, '1995-02-07', '2020-02-01', 'ST_CLERK', 50, 'JUN', 2200, TRUE);

INSERT INTO employees VALUES
(137, 'Renske', 'Ladwig', NULL, '1985-07-16', '2015-07-09', 'ST_CLERK', 50, 'JUN', 3600, FALSE);

INSERT INTO employees VALUES
(138, 'Stephen', 'Stiles', NULL, '1991-10-28', '2017-10-21', 'ST_CLERK', 50, 'JUN', 3200, FALSE);

INSERT INTO employees VALUES
(139, 'John', 'Seo', NULL, '1992-02-14', '2018-02-07', 'ST_CLERK', 50, 'JUN', 2700, FALSE);

INSERT INTO employees VALUES
(140, 'Joshua', 'Patel', NULL, '1994-04-07', '2018-04-01', 'ST_CLERK', 50, 'JUN', 2500, FALSE);

INSERT INTO employees VALUES
(141, 'Trenna', 'Rajs', NULL, '1986-10-19', '2015-10-12', 'ST_CLERK', 50, 'JUN', 3500, TRUE);

INSERT INTO employees VALUES
(142, 'Curtis', 'Davies', NULL, '1993-01-30', '2017-01-24', 'ST_CLERK', 50, 'JUN', 3100, FALSE);

INSERT INTO employees VALUES
(143, 'Randall', 'Matos', NULL, '1988-03-17', '2018-03-10', 'ST_CLERK', 50, 'JUN', 2600, TRUE);

INSERT INTO employees VALUES
(144, 'Peter', 'Vargas', NULL, '1995-07-10', '2018-07-04', 'ST_CLERK', 50, 'JUN', 2500, TRUE);

INSERT INTO employees VALUES
(145, 'John', 'Russell', NULL, '1987-10-04', '2016-09-26', 'SA_MAN', 80, 'LEAD', 14000, TRUE);

INSERT INTO employees VALUES
(146, 'Karen', 'Partners', NULL, '1995-01-06', '2016-12-31', 'SA_MAN', 80, 'LEAD', 13500, TRUE);

INSERT INTO employees VALUES
(147, 'Alberto', 'Errazuriz', NULL, '1992-03-11', '2017-03-05', 'SA_MAN', 80, 'LEAD', 12000, TRUE);

INSERT INTO employees VALUES
(148, 'Gerald', 'Cambrault', NULL, '1992-10-16', '2019-10-10', 'SA_MAN', 80, 'LEAD', 11000, FALSE);

INSERT INTO employees VALUES
(149, 'Eleni', 'Zlotkey', NULL, '1998-01-29', '2020-01-24', 'SA_MAN', 80, 'LEAD', 10500, FALSE);

INSERT INTO employees VALUES
(150, 'Peter', 'Tucker', NULL, '1990-02-01', '2017-01-25', 'SA_REP', 80, 'LEAD', 10000, TRUE);

INSERT INTO employees VALUES
(151, 'David', 'Bernstein', NULL, '1987-03-27', '2017-03-19', 'SA_REP', 80, 'LEAD', 9500, TRUE);

INSERT INTO employees VALUES
(152, 'Peter', 'Hall', NULL, '1991-08-22', '2017-08-15', 'SA_REP', 80, 'SENIOR', 9000, TRUE);

INSERT INTO employees VALUES
(153, 'Christopher', 'Olsen', NULL, '1996-03-30', '2018-03-25', 'SA_REP', 80, 'SENIOR', 8000, TRUE);

INSERT INTO employees VALUES
(154, 'Nanette', 'Cambrault', NULL, '1994-12-10', '2018-12-04', 'SA_REP', 80, 'SENIOR', 7500, FALSE);

INSERT INTO employees VALUES
(155, 'Oliver', 'Tuvault', NULL, '1996-11-23', '2019-11-18', 'SA_REP', 80, 'MIDDLE', 7000, FALSE);

INSERT INTO employees VALUES
(156, 'Janette', 'King', NULL, '1992-01-31', '2016-01-25', 'SA_REP', 80, 'LEAD', 10000, FALSE);

INSERT INTO employees VALUES
(157, 'Patrick', 'Sully', NULL, '1989-03-06', '2016-02-28', 'SA_REP', 80, 'LEAD', 9500, FALSE);

INSERT INTO employees VALUES
(158, 'Allan', 'McEwen', NULL, '1994-08-02', '2016-07-27', 'SA_REP', 80, 'SENIOR', 9000, TRUE);

INSERT INTO employees VALUES
(159, 'Lindsey', 'Smith', NULL, '1990-03-12', '2017-03-05', 'SA_REP', 80, 'SENIOR', 8000, FALSE);

INSERT INTO employees VALUES
(160, 'Louise', 'Doran', NULL, '1993-12-16', '2017-12-10', 'SA_REP', 80, 'SENIOR', 7500, TRUE);

INSERT INTO employees VALUES
(161, 'Sarath', 'Sewall', NULL, '1993-11-04', '2018-10-29', 'SA_REP', 80, 'MIDDLE', 7000, TRUE);

INSERT INTO employees VALUES
(162, 'Clara', 'Vishney', NULL, '1993-11-12', '2017-11-06', 'SA_REP', 80, 'LEAD', 10500, FALSE);

INSERT INTO employees VALUES
(163, 'Danielle', 'Greene', NULL, '1992-03-20', '2019-03-14', 'SA_REP', 80, 'LEAD', 9500, TRUE);

INSERT INTO employees VALUES
(164, 'Mattea', 'Marvins', NULL, '1991-01-26', '2020-01-19', 'SA_REP', 80, 'SENIOR', 7200, FALSE);

INSERT INTO employees VALUES
(165, 'David', 'Lee', NULL, '1994-02-24', '2020-02-18', 'SA_REP', 80, 'MIDDLE', 6800, FALSE);

INSERT INTO employees VALUES
(166, 'Sundar', 'Ande', NULL, '1998-03-25', '2020-03-19', 'SA_REP', 80, 'MIDDLE', 6400, TRUE);

INSERT INTO employees VALUES
(167, 'Amit', 'Banda', NULL, '1991-04-24', '2020-04-16', 'SA_REP', 80, 'MIDDLE', 6200, TRUE);

INSERT INTO employees VALUES
(168, 'Lisa', 'Ozer', NULL, '1987-03-14', '2017-03-06', 'SA_REP', 80, 'LEAD', 11500, FALSE);

INSERT INTO employees VALUES
(169, 'Harrison', 'Bloom', NULL, '1994-03-24', '2018-03-18', 'SA_REP', 80, 'LEAD', 10000, TRUE);

INSERT INTO employees VALUES
(170, 'Tayler', 'Fox', NULL, '1996-01-25', '2018-01-19', 'SA_REP', 80, 'LEAD', 9600, FALSE);

INSERT INTO employees VALUES
(171, 'William', 'Smith', NULL, '1994-02-24', '2019-02-18', 'SA_REP', 80, 'SENIOR', 7400, TRUE);

INSERT INTO employees VALUES
(172, 'Elizabeth', 'Bates', NULL, '1989-03-26', '2019-03-19', 'SA_REP', 80, 'SENIOR', 7300, FALSE);

INSERT INTO employees VALUES
(173, 'Sundita', 'Kumar', NULL, '1996-04-22', '2020-04-16', 'SA_REP', 80, 'MIDDLE', 6100, TRUE);

INSERT INTO employees VALUES
(174, 'Ellen', 'Abel', NULL, '1989-05-13', '2016-05-06', 'SA_REP', 80, 'LEAD', 11000, FALSE);

INSERT INTO employees VALUES
(175, 'Alyssa', 'Hutton', NULL, '1991-03-21', '2017-03-14', 'SA_REP', 80, 'SENIOR', 8800, FALSE);

INSERT INTO employees VALUES
(176, 'Jonathon', 'Taylor', NULL, '1989-03-26', '2018-03-19', 'SA_REP', 80, 'SENIOR', 8600, TRUE);

INSERT INTO employees VALUES
(177, 'Jack', 'Livingston', NULL, '1992-04-24', '2018-04-18', 'SA_REP', 80, 'SENIOR', 8400, FALSE);

INSERT INTO employees VALUES
(178, 'Kimberely', 'Grant', NULL, '1989-05-26', '2019-05-19', 'SA_REP', 80, 'MIDDLE', 7000, FALSE);

INSERT INTO employees VALUES
(179, 'Charles', 'Johnson', NULL, '1993-01-05', '2019-12-30', 'SA_REP', 80, 'MIDDLE', 6200, FALSE);

INSERT INTO employees VALUES
(180, 'Winston', 'Taylor', NULL, '1990-01-26', '2018-01-19', 'SH_CLERK', 50, 'JUN', 3200, TRUE);

INSERT INTO employees VALUES
(181, 'Jean', 'Fleaur', NULL, '1991-02-25', '2018-02-18', 'SH_CLERK', 50, 'JUN', 3100, TRUE);

INSERT INTO employees VALUES
(182, 'Martha', 'Sullivan', NULL, '1990-06-23', '2019-06-16', 'SH_CLERK', 50, 'JUN', 2500, TRUE);

INSERT INTO employees VALUES
(183, 'Girard', 'Geoni', NULL, '1991-02-05', '2020-01-29', 'SH_CLERK', 50, 'JUN', 2800, TRUE);

INSERT INTO employees VALUES
(184, 'Nandita', 'Sarchand', NULL, '1994-01-27', '2016-01-22', 'SH_CLERK', 50, 'MIDDLE', 4200, FALSE);

INSERT INTO employees VALUES
(185, 'Alexis', 'Bull', NULL, '1992-02-22', '2017-02-15', 'SH_CLERK', 50, 'MIDDLE', 4100, TRUE);

INSERT INTO employees VALUES
(186, 'Julia', 'Dellinger', NULL, '1992-06-25', '2018-06-19', 'SH_CLERK', 50, 'JUN', 3400, TRUE);

INSERT INTO employees VALUES
(187, 'Anthony', 'Cabrio', NULL, '1991-02-09', '2019-02-02', 'SH_CLERK', 50, 'JUN', 3000, FALSE);

INSERT INTO employees VALUES
(188, 'Kelly', 'Chung', NULL, '1987-06-17', '2017-06-09', 'SH_CLERK', 50, 'JUN', 3800, FALSE);

INSERT INTO employees VALUES
(189, 'Jennifer', 'Dilly', NULL, '1988-08-15', '2017-08-08', 'SH_CLERK', 50, 'JUN', 3600, TRUE);

INSERT INTO employees VALUES
(190, 'Timothy', 'Gates', NULL, '1990-07-13', '2018-07-06', 'SH_CLERK', 50, 'JUN', 2900, TRUE);

INSERT INTO employees VALUES
(191, 'Randall', 'Perkins', NULL, '1997-12-19', '2019-12-14', 'SH_CLERK', 50, 'JUN', 2500, TRUE);

INSERT INTO employees VALUES
(192, 'Sarah', 'Bell', NULL, '1992-02-05', '2016-01-30', 'SH_CLERK', 50, 'JUN', 4000, TRUE);

INSERT INTO employees VALUES
(193, 'Britney', 'Everett', NULL, '1995-03-04', '2017-02-26', 'SH_CLERK', 50, 'JUN', 3900, TRUE);

INSERT INTO employees VALUES
(194, 'Samuel', 'McCain', NULL, '1991-07-03', '2018-06-26', 'SH_CLERK', 50, 'JUN', 3200, FALSE);

INSERT INTO employees VALUES
(195, 'Vance', 'Jones', NULL, '1997-03-17', '2019-03-12', 'SH_CLERK', 50, 'JUN', 2800, TRUE);

INSERT INTO employees VALUES
(196, 'Alana', 'Walsh', NULL, '1990-04-26', '2018-04-19', 'SH_CLERK', 50, 'JUN', 3100, TRUE);

INSERT INTO employees VALUES
(197, 'Kevin', 'Feeney', NULL, '1994-05-24', '2018-05-18', 'SH_CLERK', 50, 'JUN', 3000, TRUE);

INSERT INTO employees VALUES
(198, 'Donald', 'OConnell', NULL, '1989-06-23', '2019-06-16', 'SH_CLERK', 50, 'JUN', 2600, FALSE);

INSERT INTO employees VALUES
(199, 'Douglas', 'Grant', NULL, '1992-01-15', '2020-01-08', 'SH_CLERK', 50, 'JUN', 2600, TRUE);

INSERT INTO employees VALUES
(200, 'Jennifer', 'Whalen', NULL, '1977-09-19', '2007-09-12', 'AD_ASST', 10, 'MIDDLE', 4400, FALSE);

INSERT INTO employees VALUES
(201, 'Michael', 'Hartstein', NULL, '1990-02-18', '2016-02-12', 'MK_MAN', 20, 'LEAD', 13000, TRUE);

INSERT INTO employees VALUES
(202, 'Pat', 'Fay', NULL, '1995-08-18', '2017-08-12', 'MK_REP', 20, 'MIDDLE', 6000, TRUE);

INSERT INTO employees VALUES
(203, 'Susan', 'Mavris', NULL, '1989-06-08', '2014-06-02', 'HR_REP', 40, 'MIDDLE', 6500, FALSE);

INSERT INTO employees VALUES
(204, 'Hermann', 'Baer', NULL, '1985-06-09', '2014-06-02', 'PR_REP', 70, 'LEAD', 10000, TRUE);

INSERT INTO employees VALUES
(205, 'Shelley', 'Higgins', NULL, '1986-06-09', '2014-06-02', 'AC_MGR', 110, 'LEAD', 12000, FALSE);

INSERT INTO employees VALUES
(206, 'William', 'Gietz', NULL, '1984-06-09', '2014-06-02', 'AC_ACCOUNT', 110, 'SENIOR', 8300, TRUE);





INSERT INTO emp_results VALUES(100, 'A', 'B', 'A', 'A');
INSERT INTO emp_results VALUES(101, 'D', 'B', 'A', 'A');
INSERT INTO emp_results VALUES(102, 'A', 'D', 'E', 'C');
INSERT INTO emp_results VALUES(103, 'D', 'E', 'A', 'B');
INSERT INTO emp_results VALUES(104, 'C', 'A', 'D', 'E');
INSERT INTO emp_results VALUES(105, 'E', 'E', 'A', 'C');
INSERT INTO emp_results VALUES(106, 'B', 'A', 'B', 'A');
INSERT INTO emp_results VALUES(107, 'A', 'A', 'C', 'E');
INSERT INTO emp_results VALUES(108, 'B', 'B', 'E', 'C');
INSERT INTO emp_results VALUES(109, 'B', 'D', 'A', 'D');
INSERT INTO emp_results VALUES(110, 'C', 'D', 'A', 'E');
INSERT INTO emp_results VALUES(111, 'B', 'B', 'E', 'E');
INSERT INTO emp_results VALUES(112, 'E', 'D', 'B', 'A');
INSERT INTO emp_results VALUES(113, 'E', 'D', 'E', 'E');
INSERT INTO emp_results VALUES(114, 'D', 'B', 'E', 'B');
INSERT INTO emp_results VALUES(115, 'D', 'C', 'A', 'C');
INSERT INTO emp_results VALUES(116, 'C', 'D', 'C', 'D');
INSERT INTO emp_results VALUES(117, 'E', 'B', 'E', 'C');
INSERT INTO emp_results VALUES(118, 'E', 'E', 'C', 'B');
INSERT INTO emp_results VALUES(119, 'E', 'E', 'A', 'C');
INSERT INTO emp_results VALUES(120, 'D', 'E', 'A', 'A');
INSERT INTO emp_results VALUES(121, 'D', 'E', 'B', 'D');
INSERT INTO emp_results VALUES(122, 'E', 'C', 'B', 'D');
INSERT INTO emp_results VALUES(123, 'E', 'E', 'C', 'D');
INSERT INTO emp_results VALUES(124, 'A', 'C', 'C', 'A');
INSERT INTO emp_results VALUES(125, 'B', 'C', 'A', 'A');
INSERT INTO emp_results VALUES(126, 'D', 'B', 'C', 'C');
INSERT INTO emp_results VALUES(127, 'B', 'C', 'D', 'E');
INSERT INTO emp_results VALUES(128, 'B', 'A', 'B', 'A');
INSERT INTO emp_results VALUES(129, 'C', 'E', 'B', 'E');
INSERT INTO emp_results VALUES(130, 'B', 'B', 'D', 'B');
INSERT INTO emp_results VALUES(131, 'D', 'D', 'D', 'D');
INSERT INTO emp_results VALUES(132, 'C', 'A', 'A', 'E');
INSERT INTO emp_results VALUES(133, 'A', 'B', 'E', 'D');
INSERT INTO emp_results VALUES(134, 'A', 'E', 'D', 'A');
INSERT INTO emp_results VALUES(135, 'D', 'B', 'B', 'E');
INSERT INTO emp_results VALUES(136, 'C', 'A', 'C', 'A');
INSERT INTO emp_results VALUES(137, 'D', 'C', 'C', 'E');
INSERT INTO emp_results VALUES(138, 'D', 'A', 'C', 'A');
INSERT INTO emp_results VALUES(139, 'C', 'D', 'C', 'B');
INSERT INTO emp_results VALUES(140, 'B', 'A', 'A', 'B');
INSERT INTO emp_results VALUES(141, 'A', 'E', 'B', 'C');
INSERT INTO emp_results VALUES(142, 'B', 'D', 'C', 'E');
INSERT INTO emp_results VALUES(143, 'C', 'E', 'B', 'A');
INSERT INTO emp_results VALUES(144, 'A', 'C', 'A', 'A');
INSERT INTO emp_results VALUES(145, 'C', 'E', 'E', 'E');
INSERT INTO emp_results VALUES(146, 'C', 'D', 'E', 'D');
INSERT INTO emp_results VALUES(147, 'B', 'C', 'C', 'E');
INSERT INTO emp_results VALUES(148, 'B', 'E', 'E', 'C');
INSERT INTO emp_results VALUES(149, 'E', 'D', 'D', 'A');
INSERT INTO emp_results VALUES(150, 'C', 'D', 'B', 'D');
INSERT INTO emp_results VALUES(151, 'E', 'C', 'D', 'D');
INSERT INTO emp_results VALUES(152, 'A', 'A', 'B', 'B');
INSERT INTO emp_results VALUES(153, 'B', 'E', 'A', 'E');
INSERT INTO emp_results VALUES(154, 'A', 'D', 'A', 'D');
INSERT INTO emp_results VALUES(155, 'D', 'D', 'B', 'C');
INSERT INTO emp_results VALUES(156, 'E', 'A', 'A', 'B');
INSERT INTO emp_results VALUES(157, 'E', 'D', 'E', 'D');
INSERT INTO emp_results VALUES(158, 'D', 'C', 'B', 'D');
INSERT INTO emp_results VALUES(159, 'E', 'C', 'A', 'C');
INSERT INTO emp_results VALUES(160, 'C', 'B', 'C', 'B');
INSERT INTO emp_results VALUES(161, 'A', 'C', 'B', 'C');
INSERT INTO emp_results VALUES(162, 'D', 'E', 'A', 'C');
INSERT INTO emp_results VALUES(163, 'C', 'E', 'D', 'D');
INSERT INTO emp_results VALUES(164, 'D', 'D', 'E', 'E');
INSERT INTO emp_results VALUES(165, 'C', 'E', 'D', 'C');
INSERT INTO emp_results VALUES(166, 'A', 'C', 'A', 'A');
INSERT INTO emp_results VALUES(167, 'C', 'A', 'E', 'D');
INSERT INTO emp_results VALUES(168, 'C', 'C', 'B', 'C');
INSERT INTO emp_results VALUES(169, 'A', 'D', 'C', 'E');
INSERT INTO emp_results VALUES(170, 'E', 'E', 'E', 'E');
INSERT INTO emp_results VALUES(171, 'D', 'B', 'D', 'B');
INSERT INTO emp_results VALUES(172, 'C', 'B', 'B', 'B');
INSERT INTO emp_results VALUES(173, 'C', 'B', 'A', 'D');
INSERT INTO emp_results VALUES(174, 'E', 'C', 'B', 'E');
INSERT INTO emp_results VALUES(175, 'D', 'E', 'E', 'C');
INSERT INTO emp_results VALUES(176, 'D', 'C', 'A', 'B');
INSERT INTO emp_results VALUES(177, 'B', 'C', 'C', 'E');
INSERT INTO emp_results VALUES(178, 'B', 'E', 'B', 'D');
INSERT INTO emp_results VALUES(179, 'A', 'A', 'B', 'C');
INSERT INTO emp_results VALUES(180, 'B', 'C', 'B', 'E');
INSERT INTO emp_results VALUES(181, 'E', 'E', 'B', 'B');
INSERT INTO emp_results VALUES(182, 'C', 'B', 'A', 'D');
INSERT INTO emp_results VALUES(183, 'D', 'B', 'E', 'C');
INSERT INTO emp_results VALUES(184, 'D', 'D', 'C', 'A');
INSERT INTO emp_results VALUES(185, 'C', 'B', 'C', 'E');
INSERT INTO emp_results VALUES(186, 'B', 'B', 'C', 'A');
INSERT INTO emp_results VALUES(187, 'A', 'D', 'B', 'A');
INSERT INTO emp_results VALUES(188, 'E', 'A', 'D', 'C');
INSERT INTO emp_results VALUES(189, 'C', 'C', 'E', 'E');
INSERT INTO emp_results VALUES(190, 'C', 'E', 'A', 'B');
INSERT INTO emp_results VALUES(191, 'D', 'B', 'C', 'D');
INSERT INTO emp_results VALUES(192, 'A', 'D', 'C', 'C');
INSERT INTO emp_results VALUES(193, 'B', 'C', 'C', 'B');
INSERT INTO emp_results VALUES(194, 'B', 'E', 'B', 'D');
INSERT INTO emp_results VALUES(195, 'C', 'A', 'A', 'A');
INSERT INTO emp_results VALUES(196, 'D', 'C', 'E', 'A');
INSERT INTO emp_results VALUES(197, 'D', 'C', 'C', 'B');
INSERT INTO emp_results VALUES(198, 'B', 'D', 'A', 'E');
INSERT INTO emp_results VALUES(199, 'E', 'A', 'B', 'B');
INSERT INTO emp_results VALUES(200, 'C', 'A', 'D', 'C');
INSERT INTO emp_results VALUES(201, 'E', 'D', 'C', 'D');
INSERT INTO emp_results VALUES(202, 'B', 'C', 'C', 'A');
INSERT INTO emp_results VALUES(203, 'C', 'C', 'B', 'D');
INSERT INTO emp_results VALUES(204, 'C', 'D', 'B', 'B');
INSERT INTO emp_results VALUES(205, 'D', 'E', 'A', 'C');
INSERT INTO emp_results VALUES(206, 'B', 'A', 'A', 'C');


ALTER TABLE departments
    ADD CONSTRAINT fk_manager_id FOREIGN KEY(manager_id) REFERENCES employees(employee_id);
