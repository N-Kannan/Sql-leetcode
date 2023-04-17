#1581. Customer Who Visited but Did Not Make Any Transactions

#Write a SQL query to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

#Return the result table sorted in any order.

#The query result format is in the following example.

SELECT customer_id, COUNT(v.visit_id) as count_no_trans 
FROM Visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id

