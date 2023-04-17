#175. Combine Two Tables


#Write an SQL query to report the first name, last name, city, and state of each person in the Person table. If the address of a personId is not present in the Address table, report null instead.

#Return the result table in any order.

#The query result format is in the following example.
#https://leetcode.com/problems/combine-two-tables/?envType=study-plan&id=sql-i

# Write your MySQL query statement below
select 
 person.firstName
,person.lastName
,(
    CASE
      WHEN Address.city is null THEN Null
      ELSE Address.city
    END
  ) AS city
,(
    CASE
      WHEN Address.state is null THEN Null
      ELSE Address.state
    END
  ) AS state



from Person left join  Address on person.personId = Address.personId
