#584. Find Customer Referee

#Write an SQL query to report the names of the customer that are not referred by the customer with id = 2.

#Return the result table in any order.

#The query result format is in the following example.

# Write your MySQL query statement below

select name
from customer
where referee_id not in (2) or referee_id is Null
