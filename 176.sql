#176. Second Highest Salary

#Write an SQL query to report the second highest salary from the Employee table. If there is no second highest salary, the query should report null.

#The query result format is in the following example.

# Write your MySQL query statement below
SELECT
    IFNULL(
      (SELECT DISTINCT Salary
       FROM Employee
       ORDER BY Salary DESC
        LIMIT 1 OFFSET 1),
    NULL) AS SecondHighestSalary
