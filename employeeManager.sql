

select * from employee
insert into employee (staff_number,supervisor_name) values (50,NULL)
select 

select * from location

create table location (id int, city varchar(20))
insert into location values (50,'d')

SELECT e.staff_number, m.staff_number as manager
FROM
    employee e, employee m
WHERE e.supervisor_name = m.staff_number (+ 

location l
e.staff_number,

SELECT  m.staff_number as manager, l.city , count (e.staff_number) num_emp
FROM
    employee e
    LEFT OUTER JOIN employee m ON e.supervisor_name = m.staff_number
	LEFT OUTER JOIN  location l ON l.id = m.staff_number
		 group by m.staff_number , l.city

SELECT  m.id as Manager_id, m.name as Manager_name, l.city as Manager_city , count (e.id) as Num_emp_supevised
FROM
    employee e
    LEFT OUTER JOIN employee m ON e.ManagedById = m.id
	LEFT OUTER JOIN  location l ON l.EmployeeId = m.id
		 group by m.id, m.name, l.city

--to consider the case where employee dose not have any manager assigned (eg CEO) we applied left outer join hence all such employees will be collected under manager id, manager name, manager city as NULL and count will show number of employees who dose not have manager.