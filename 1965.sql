#1965. Employees With Missing Information

#Write an SQL query to report the IDs of all the employees with missing information. The information of an employee is missing if:

#The employee's name is missing, or
#The employee's salary is missing.
#Return the result table ordered by employee_id in ascending order.

# Write your MySQL query statement below

with cte1 as (
    select E.employee_id,e.name,s.salary from Employees E left JOIN  Salaries S on
     e.employee_id=s.employee_id
    ),
    cte2 as (
    select s.employee_id,e.name,s.salary from Salaries S left JOIN  Employees E on
     s.employee_id=e.employee_id
    ),
    cte3 as (select * from cte1 union all select * from cte2)

select employee_id from cte3
where name is null or salary is null
order by employee_id asc
 
