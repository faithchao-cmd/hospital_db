--Case when
select f_name, l_name , case when admission_date = null then 'Still admitted '
else 'Not admitted'
end as admission_status
from Patients p
join admissions adm
on p.patient_id = adm.patient_id
;


select first_name, last_name, salary,
case
when salary >= 190000 then 'high earner' 
when salary between 160000 and 189999 then 'Average earner'
else 'Entry level'
end as Salary_status
from Doctors;


select appointment_id , status , 
case 
when status = 'Completed' then '@ completed'
when status = 'Scheduled' then '~ scheduled'
when status = 'Cancelled' then '# cancelled'
when status = 'No show' then '?? no show'
else '!unknown'
end as app_status
from appointments;

select first_name, last_name, gender
  sum(case when gender = 'F' then 1 else 0 end ) as ladies,
  sum(case when gender = 'M' then 1 else 0 end ) as Gents
  count(*) as total
from nurses
group by gender;

select dep_name
from Departments dep
where department_id in (
           select 2 ,
           case when salary between 0 and  160000 then 'low salary'
		    when salary between 160000 and 200000 then 'Average salary'
			else 'high salary'
			end as total_salary
			from Doctors d
			where d.department_id = dep.department_id)
 order by dep_name;


 SELECT 
    combined_staff.department_id,
    SUM(combined_staff.salary) AS total_department_payroll,
    AVG(combined_staff.salary) AS average_salary
FROM (
    -- Query 1: Get Doctor salaries
    SELECT department_id, salary 
    FROM Doctors
    
    UNION ALL -- Stack the rows together
    
    -- Query 2: Get Nurse salaries
    SELECT department_id, salary 
    FROM Nurses
) AS combined_staff
GROUP BY combined_staff.department_id
ORDER BY total_department_payroll DESC;

select admission_id,coalesce(cast(discharge_date as varchar(30)),'Active'),
case when discharge_date is null then 'Active'
else 'None'
end as admission_Status
from admissions;

SELECT admission_id, patient_id,
       admission_date,
       COALESCE(
         CAST(discharge_date AS CHAR),
         'Active'
       )                AS discharge_info,
       diagnosis, condition
FROM   admissions
ORDER BY admission_date;


select concat(f_name, ' ' , l_name) as name ,gender ,
case when bloodtype = 'O-' then 'Universal donor'
when  bloodtype = 'AB+' then 'Universal recipient'
else 'Standard'
end as Blood_status
from Patients;

select test_name, 
case when status = 'completed' then 'clear'
     when status = 'Abnormal' then 'High risk'
     else 'Not known'
 end as Red_flag
from lab_tests;


Select room_type,
       Count(*) as total_rooms,
       sum(case when status='Occupied' then 1 else 0 end) as occupied,
       round(
         sum(case when status='Occupied' then 1.0 else 0 end)
         / nullif(count(*), 0) * 100
       , 1) as occupancy_pct
from rooms
group by room_type
order by occupancy_pct desc;

 