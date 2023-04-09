#1757. Recyclable and Low Fat Products

#Write an SQL query to find the ids of products that are both low fat and recyclable.

#Return the result table in any order.

#The query result format is in the following example.



# Write your MySQL query statement below

select product_id
from products
where low_fats="y" and recyclable='y'
