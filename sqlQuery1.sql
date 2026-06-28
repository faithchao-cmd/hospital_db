
create table Patients
(
patient_id int primary key ,
f_name varchar(50),
l_name varchar(50),
gender char (1),
DOB date,
bloodtype varchar(5),
address varchar(50),
insurance_provider varchar(50),
registration_date date
);


insert into Patients values
(1001, 'Alice',   'Turner',    'F', '1985-04-12', 'A+', '12 Oak Lane',  'BlueCross',    '2020-01-10'),
(1002, 'Brian',   'Foster',    'M', '1978-09-23', 'O-',  '45 Maple Ave', 'Aetna', '2019-06-15'),
(1003, 'Carol',   'Simmons',   'F', '1990-12-05', 'B+','88 Pine St',  'UnitedHealth', '2021-03-22'),
(1004, 'Daniel',  'Hughes',    'M', '1965-07-19', 'AB+',  '200 Cedar Blvd', 'Cigna', '2018-11-30'),
(1005, 'Elena',   'Vasquez',   'F', '2002-02-28', 'O+',  '9 Birch Court', 'Humana', '2022-05-05'),
(1006, 'Frank',   'Bell',      'M', '1955-11-11', 'A-', '301 Elm Street', 'Medicare',  '2017-08-18'),
(1007, 'Grace',   'Murphy',    'F', '1998-06-30', 'B-', '77 Walnut Way', 'BlueCross', '2023-01-02'),
(1008, 'Henry',   'Collins',   'M', '1973-03-08', 'AB-','55 Spruce Drive', 'Aetna', '2020-09-14'),
(1009, 'Isabella','Reed',      'F', '2010-08-22', 'A+', '14 Aspen Road',  'Cigna',  '2021-11-11'),
(1010, 'Jack',    'Morgan',    'M', '1989-01-15', 'O+',  '66 Poplar Pl', 'UnitedHealth', '2019-04-27'),
(1011, 'Karen',   'Price',     'F', '1960-05-03', 'B+',  '23 Willow Way', 'Medicare', '2016-07-09'),
(1012, 'Leo',     'Bennett',   'M', '1995-10-17', 'A+',  '99 Sycamore St', 'Humana',  '2022-02-14'),
(1013, 'Mia',     'Cooper',    'F', '1982-07-29', 'O-',  '400 Chestnut Ave', 'BlueCross',  '2018-12-20'),
(1014, 'Noah',    'Richardson','M', '2015-11-04', 'AB+',  '18 Magnolia Blvd', 'Aetna', '2023-03-30'),
(1015, 'Olivia',  'Stewart',   'F', '1970-03-25', 'A-', '500 Redwood Rd', 'Cigna',  '2015-05-05'),
(1016, 'Paul',    'Sanders',   'M', '1952-08-14', 'O+', '7 Hickory Lane',  'Medicare',  '2014-09-22'),
(1017, 'Rachel',  'Barnes',    'F', '1993-12-08', 'B+',  '33 Juniper Ct', 'UnitedHealth', '2021-06-16'),
(1018, 'Samuel',  'Wood',      'M', '1980-04-20', 'A+', '250 Palm Dr',  'Humana', '2020-10-01'),
(1019, 'Tina',    'Cole',      'F', '2005-09-13', 'O-',  '82 Cypress Ave', 'BlueCross', '2022-08-07'),
(1020, 'Uma',     'Flores',    'F', '1945-01-30', 'AB-', '11 Laurel Street', 'Medicare', '2013-11-15');
 
create table nurses 
( nurse_id        INT PRIMARY KEY,
    first_name      VARCHAR(50),
    last_name       VARCHAR(50),
    gender          CHAR(1),
    department_id   INT,
    phone           VARCHAR(20),
    email           VARCHAR(100),
    hire_date       DATE,
    salary          DECIMAL(10,2),
    shift           VARCHAR(10)  
	);


	insert into nurses values
	(201, 'Amy',     'Scott',    'F', 1,  '555-4001', 'a.scott@hospital.com',    '2015-02-10', 68000.00, 'Morning'),
(202, 'Ben',     'Evans',    'M', 2,  '555-4002', 'b.evans@hospital.com',    '2016-08-22', 65000.00, 'Evening'),
(203, 'Clara',   'Parker',   'F', 3,  '555-4003', 'c.parker@hospital.com',   '2017-05-14', 67000.00, 'Morning'),
(204, 'Derek',   'Jenkins',  'M', 4,  '555-4004', 'd.jenkins@hospital.com',  '2018-11-30', 64000.00, 'Night'),
(205, 'Eva',     'King',     'F', 5,  '555-4005', 'e.king@hospital.com',     '2019-03-05', 69000.00, 'Morning'),
(206, 'Felix',   'Wright',   'M', 6,  '555-4006', 'f.wright@hospital.com',   '2014-07-19', 72000.00, 'Evening'),
(207, 'Gina',    'Lopez',    'F', 7,  '555-4007', 'g.lopez@hospital.com',    '2020-01-25', 63000.00, 'Night'),
(208, 'Hank',    'Hill',     'M', 8,  '555-4008', 'h.hill@hospital.com',     '2013-09-08', 70000.00, 'Morning'),
(209, 'Iris',    'Green',    'F', 9,  '555-4009', 'i.green@hospital.com',    '2021-04-12', 62000.00, 'Evening'),
(210, 'Jake',    'Baker',    'M', 10, '555-4010', 'j.baker@hospital.com',    '2022-06-18', 61000.00, 'Morning');
   
   create table Rooms
   (
   room_id         INT PRIMARY KEY,
    room_number     VARCHAR(10),
    room_type       VARCHAR(50), 
    department_id   INT,
    floor           INT,
    capacity        INT,
    daily_rate      DECIMAL(8,2),
    status          VARCHAR(20)  
   )

   insert into Rooms values
   (301, '101-A', 'ICU',          1,  1, 1, 2500.00, 'Occupied'),
(302, '102-A', 'ICU',          2,  1, 1, 2500.00, 'Available'),
(303, '201-B', 'Private',      3,  2, 1,  800.00, 'Occupied'),
(304, '202-B', 'Private',      4,  2, 1,  800.00, 'Available'),
(305, '203-B', 'Semi-Private', 3,  2, 2,  500.00, 'Occupied'),
(306, '301-C', 'General',      5,  3, 4,  350.00, 'Available'),
(307, '302-C', 'General',      6,  3, 4,  350.00, 'Occupied'),
(308, '401-D', 'OR',           8,  4, 1, 3500.00, 'Available'),
(309, '402-D', 'OR',           8,  4, 1, 3500.00, 'Occupied'),
(310, '501-E', 'Semi-Private', 10, 5, 2,  500.00, 'Maintenance'),
(311, '103-A', 'ICU',          6,  1, 1, 2500.00, 'Occupied'),
(312, '204-B', 'Private',      4,  2, 1,  800.00, 'Occupied'),
(313, '303-C', 'General',      2,  3, 4,  350.00, 'Available'),
(314, '403-D', 'Private',      1,  4, 1,  800.00, 'Occupied'),
(315, '502-E', 'General',      9,  5, 4,  350.00, 'Available');
 

 -- SIMPLE SELECT QUERIES
  select f_name , l_name ,DOB ,bloodtype , address
  from Patients
  where gender = 'F';

  select first_name,last_name,specialization ,salary
  from Doctors 
  order by salary desc;

  select room_number, room_type , daily_rate
  from Rooms
  where daily_rate between 400 and 1000 order by daily_rate desc ;

  select *
  from nurses
  where salary > 65000 and shift = 'Morning';

  select f_name  , l_name  
  from Patients
  where l_name like '%C%' ;

  select f_name , l_name , bloodtype , insurance_provider
  from Patients
  where insurance_provider in ('Cigna' ,'Humana') ;

  select *
  from nurses 
  where gender ='M';

  select count(*)
  from nurses
  group by phone;

  select count(distinct phone)
  from nurses;

  select * from Doctors
  where gender like 'M' or gender like 'F';

  select * from Doctors
  where gender NOT in ('M');

  select *
  from Doctors
  where years_exp > 12 order by years_exp desc;

  --concat + alias
  select CONCAT( f_name,' ', l_name) as fullnames ,address,insurance_provider
  from Patients;

  --limit + order by
  select first_name,last_name ,shift ,salary
  from nurses
  order by salary asc
 -- limit  5 ;


 --group by + count
  select insurance_provider ,count (*) as patient_count
  from Patients
  group by insurance_provider
  order by patient_count desc;

  --having + sum
  select room_type ,sum( daily_rate *capacity) as totalrevenue
  from Rooms
  group by room_type 
  having sum ( daily_rate *capacity) >5000;


  --case when (TIMESTAMPDIFF or DATEDIFF) depending on the tool
  select f_name, l_name ,DOB,
  case 
  when DATEDIFF(YEAR, DOB,'2026-05-20') between 0 and 17 then 'Child'
  when DATEDIFF(YEAR,DOB,'2026-05-20') between 18 and 60 then 'Adult'
  else 'Senior'
  end as lable
  from Patients;

  --inner join
  select first_name , last_name ,shift,dep_name
  from nurses
  inner join Departments
  on nurses.department_id = Departments.department_id;
  
   --having , count , join
  SELECT dep.dep_name,
       COUNT(r.room_id) AS total_rooms,
       SUM(CASE WHEN r.status = 'Available'
            THEN 1 ELSE 0 END) AS available
  FROM   departments dep
  JOIN   rooms r
    ON   dep.department_id = r.department_id
  GROUP BY dep.dep_name
  HAVING COUNT(r.room_id) > 1
     AND SUM(CASE WHEN r.status = 'Available'
            THEN 1 ELSE 0 END) >= 1
   ORDER BY total_rooms DESC;

   --group by , join , avg
  select Departments.department_id , dep_name , avg (years_exp) as exp_Doc
  from Departments 
  inner join Doctors
  on Departments.department_id = Doctors.department_id
  group by Departments.dep_name;--wrong 
 
 SELECT dep.dep_name AS department,
       ROUND(AVG(d.years_exp),1) AS avg_experience,
       COUNT(d.doctor_id)        AS doctor_count
FROM   departments dep
JOIN   doctors d
  ON   dep.department_id = d.department_id
GROUP BY dep.dep_name
ORDER BY avg_experience DESC;--right


--SUBQUERY IN WHERE 
  SELECT first_name, last_name,
       shift, salary
FROM   nurses
WHERE  salary > (
  SELECT AVG(salary) FROM nurses
)
ORDER BY salary DESC;


--UNION ALL
SELECT 'Doctor' AS role,
       first_name, last_name,
       salary
FROM   doctors
UNION ALL
SELECT 'Nurse',
       first_name, last_name,
       salary
FROM   nurses
ORDER BY role, salary DESC;

-- WINDOW FUNCTION -PERCENT RANK
SELECT first_name, last_name,
       salary,
       ROUND(
         PERCENT_RANK() OVER (
           ORDER BY salary
         ) * 100, 1
       ) AS salary_percentile
FROM   doctors
ORDER BY salary DESC;


--CTE (WITH CLAUSE)
WITH dept_avg AS (
  SELECT department_id,
         ROUND(AVG(salary),0) AS avg_salary
  FROM   doctors
  GROUP BY department_id
)
SELECT dep.name,
       da.avg_salary
FROM   dept_avg da
JOIN   departments dep
  ON   da.department_id = dep.department_id
WHERE  da.avg_salary > 170000
ORDER BY da.avg_salary DESC;


--lag window function
SELECT first_name, last_name,
       hire_date,
       LAG(hire_date, 1) OVER (
         ORDER BY hire_date
       ) AS prev_hire_date,
       DATEDIFF(
         hire_date,
         LAG(hire_date,1) OVER (ORDER BY hire_date)
       ) AS days_between_hires
FROM   doctors
ORDER BY hire_date;


--multi table report
SELECT
  dep.name AS department,
  CONCAT(hd.first_name,' ',hd.last_name) AS head_doctor,
  COUNT(DISTINCT d.doctor_id)  AS doctors,
  COUNT(DISTINCT n.nurse_id)   AS nurses,
  COUNT(DISTINCT r.room_id)    AS rooms,
  ROUND(
    SUM(CASE WHEN r.status='Occupied'
         THEN 1.0 ELSE 0 END)
    * 100 / NULLIF(COUNT(DISTINCT r.room_id),0)
  ,0)                          AS occupancy_pct,
  CASE
    WHEN SUM(CASE WHEN r.status='Occupied'
              THEN 1 ELSE 0 END)
         = COUNT(DISTINCT r.room_id)
      AND COUNT(DISTINCT r.room_id) > 0
      THEN 'Fully Occupied'
    WHEN SUM(CASE WHEN r.status='Available'
              THEN 1 ELSE 0 END) > 0
      THEN 'Partially Occupied'
    ELSE 'All Available'
  END AS occupancy_status
FROM       departments dep
JOIN       doctors     hd
  ON       dep.head_doctor_id = hd.doctor_id
LEFT JOIN  doctors     d
  ON       dep.department_id  = d.department_id
LEFT JOIN  nurses      n
  ON       dep.department_id  = n.department_id
LEFT JOIN  rooms       r
  ON       dep.department_id  = r.department_id
GROUP BY   dep.dep_name, hd.first_name, hd.last_name
ORDER BY   occupancy_pct DESC NULLS LAST;



select room_type, sum(daily_rate ) as total_income
from Rooms
group by Rooms.room_type
having sum(daily_rate) > 0 ;


--distict removes duplicates
   select distinct bloodtype
   from Patients;