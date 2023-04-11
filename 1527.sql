#1527. Patients With a Condition


#Write an SQL query to report the patient_id, patient_name and conditions of the patients who have Type I Diabetes. Type I Diabetes always starts with DIAB1 prefix.

#Return the result table in any order.

#The query result format is in the following example.

# Write your MySQL query statement below

SELECT * 
FROM Patients
WHERE conditions LIKE '%DIAB1%'
