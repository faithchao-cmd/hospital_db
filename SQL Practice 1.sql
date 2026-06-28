
--simple select queries
select first_name , last_name ,specialization
 from Doctors;

 select f_name , l_name , gender
 from Patients
 where gender = 'F';

 select dep_name,location,floor_nop
 from Departments
 where location = 'Block A' and floor_nop ='Floor 2';

 SELECT medication_id , name
 from medications;

  select doctor_id,first_name,last_name,salary
  from Doctors
  where salary > 180000;

  select appointment_id ,appointment_date
  from appointments
  where appointment_date > '2025-01-01';

  SELECT *
FROM appointments
WHERE appointment_date > '2025-01-01';
  

  --this is an example of select alias(as) in where or group which is prohibited
  select patient_id ,f_name, l_name, count (DOB) as Age
  from Patients
  where Age > 50
  group by patient_id; 
   
  
  with doctor_counts as
  (
  select specialization, count(years_exp) as doctor_counts
  from Doctors
  group by specialization
  )
  select specialization, doctor_counts
  from doctor_counts
  where doctor_counts >10;


  SELECT CONCAT(d.first_name,' ',d.last_name) AS doctor,
       d.specialization,
       COUNT(DISTINCT a.patient_id) AS unique_patients
FROM   doctors      d
JOIN   appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.first_name,
         d.last_name, d.specialization
ORDER BY unique_patients DESC ;

--where , group by , having
   select bloodtype  ,count(*) as nop_BT
   from Patients
   where DOB < '1980-01-01'
   group by bloodtype 
   having count(*)> 1
   ORDER BY nop_BT desc;


   SELECT bloodtype,
       COUNT(*) AS patient_count
FROM   patients
WHERE DOB < '1980-01-01'
GROUP BY bloodtype
HAVING COUNT(*) > 1
ORDER BY patient_count DESC;
 


 -- case when and group by 
 select  
 sum (case when appointment_time < '11:00:00' = Morning then 1 else 0  end),
 sum ( case when appointment_time between '11:00:00' and '13:59:00'= Midday then 1 else 0 end ) ,
 sum (case when appointment_time > '14:00:00' = Afternoon then 1 else 0 end)
 from appointments
 group by appointment_time;
  
  --correct
  SELECT 
    CASE 
        WHEN appointment_time < '11:00:00' THEN 'Morning'
        WHEN appointment_time BETWEEN '11:00:00' AND '13:59:59' THEN 'Midday'
        ELSE 'Afternoon'
    END AS time_of_day,
    COUNT(*) AS total_appointments
FROM appointments
GROUP BY 
    CASE 
        WHEN appointment_time < '11:00:00' THEN 'Morning'
        WHEN appointment_time BETWEEN '11:00:00' AND '13:59:59' THEN 'Midday'
        ELSE 'Afternoon'
    END;


	--SUBQUERIES
	SELECT f_name, l_name,
       insurance_provider, address
FROM   patients
WHERE  patient_id IN (
  SELECT patient_id
  FROM   prescriptions
  WHERE  refills_allowed > 3
)
ORDER BY l_name;


select * 
from patients;

select * 
from appointments;

 

	   --IN
  select first_name , last_name , specialization
  from doctors do
  where department_id IN ( 
         select department_id
		 from Departments d
		 where d.department_id = do.department_id
		 and d.location  = 'Block A');
		 
   
   select test_name , test_date
   from lab_tests l
   where l.doctor_id in(
            select d.doctor_id 
              from Doctors d
			  join departments dep
			  on d.doctor_id= dep.department_id
		      and dep_name = 'Oncology');



			 --NOT IN
select f_name ,l_name ,registration_date 
 from Patients 
where patient_id not in(
	         select distinct patient_id
			 from appointments 
			 where patient_id is not null
			  );  

 select first_name ,last_name,specialization 
 from doctors 
 where doctor_id not in (
	      select distinct doctor_id
		  from medical_records
		  where record_date is null)
 and doctor_id not in (
		        select distinct doctor_id
				from appointments
				where doctor_id is not null)
 order by first_name;



		   --EXISTS
select patient_id ,f_name, l_name , address
 from patients p
 where EXISTS( 
       select patient_id 
	   from appointments a
	   where a.patient_id = p.patient_id
	   and a.status = 'Completed');


  select f_name ,l_name
  from Patients p
  where  exists(
		select distinct patient_id
		from appointments a
		where a.patient_id = p.patient_id 
		and a.status = 'Completed')
		order by f_name;


 select room_number , room_type
 from Rooms r
 where exists(
		     select department_id  
			 from Departments dep
			 where dep.department_id = r.department_id
			 and r.status = 'Available')
 and exists(
			 select concat(first_name,last_name) as name, department_id
			 from Doctors d
			 where d.department_id = r.department_id
					 )
order by room_number;

            
select concat(first_name,last_name) as name, specialization
from Doctors d
where exists(
			select room_id
			from Rooms r
			where r.room_id = d.department_id
			 and r.status = 'Available')
and exists(
			 select department_id
			 from Departments dep
			 where dep.department_id =d.department_id)
order by first_name;


				   SELECT dep_name, dep.location
FROM   Departments dep
WHERE  EXISTS (
  SELECT 1
  FROM   Rooms r
  WHERE  r.department_id = dep.department_id   
    AND  r.status = 'Available'                
)
AND    EXISTS (
  SELECT 1
  FROM   Doctors d
  WHERE  d.department_id = dep.department_id   
)
ORDER BY dep_name;
			
			
select f_name, l_name 
from Patients p
where exists(
         select 1
		 from lab_tests lt
		 where lt.test_id = p.patient_id
		 and lt.status = 'Abnormal')
and exists(
         SELECT 1 FROM admissions adm
         WHERE  adm.patient_id   = p.patient_id
         AND  adm.discharge_date IS NULL)
order by f_name;
			      

select f_name, l_name 
from Patients p
where not exists( 
         select 1
		 from lab_tests lt
		 where lt.patient_id = p.patient_id
		 and lt.status = null)
order by f_name;


select first_name,last_name,specialization
from Doctors d
where not exists(
        select 1
		from Patients p
		join Doctors
		on p.patient_id = d.doctor_id
		)
order by d.first_name;
			

select room_number, room_type, daily_rate
from Rooms r
where not exists(
        select 1
	    from admissions a
	    where a.room_id=r.room_id
	    and a.condition is null)
order by daily_rate;


select f_name, l_name,bloodtype,address,insurance_provider
from Patients p
where exists(
	       select 1
		   from appointments a
		   where a.patient_id=p.patient_id
		    )
and not exists(
	       select 1
		   from medical_records mr
		   where mr.patient_id =p.patient_id
		   )
order by f_name;



		   --SINGLE ROW FUNCTIONS
		   --Upper and Lower
select upper (first_name) as Firstname, upper(last_name) as Surname , lower(specialization) as Specialization
from Doctors;

		   --Length
 select f_name ,len(l_name) as characterCount
 from Patients;

		   --replace
select first_name , last_name ,replace (email,'@hospital.com','@hospital.net')
from Doctors;

SELECT concat(first_name,' ',last_name) as names ,ROUND(salary,-3)
FROM Doctors;