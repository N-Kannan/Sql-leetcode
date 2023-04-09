#183. Customers Who Never Order

#Write an SQL query to report all customers who never order anything.

#Return the result table in any order.

$The query result format is in the following example.

# Write your MySQL query statement below

select name as Customers
from Customers
where id not in (select DISTINCT customerId from orders)
