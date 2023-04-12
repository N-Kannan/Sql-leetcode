#1795. Rearrange Products Table

#Write an SQL query to rearrange the Products table so that each row has (product_id, store, price). If a product is not available in a store, do not include a row with that product_id and store combination in the result table.

#Return the result table in any order.

#The query result format is in the following example.

# Write your MySQL query statement below

with cte1 as (
 select product_id, "store1" as store,Store1 as price from Products
),
cte2 as (
 select product_id,"store2" as store, Store2 as price from Products
),
cte3 as (
 select product_id, "store3" as store,Store3 as price from Products
),
cte4 as (
 select * from cte1 union all 
 select * from cte2 union all 
 select * from cte3
)

select * from cte4
where price is Not null
