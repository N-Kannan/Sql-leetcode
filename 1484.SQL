#1484. Group Sold Products By The Date

#Write an SQL query to find for each date the number of different products sold and their names.

#The sold products names for each date should be sorted lexicographically.

#Return the result table ordered by sell_date.

#The query result format is in the following example.
# Write your MySQL query statement below

SELECT distinct(sell_date),count(Distinct PRODUCT) as num_sold , GROUP_CONCAT(Distinct product) AS products
FROM Activities
GROUP BY sell_date;
