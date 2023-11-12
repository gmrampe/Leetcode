# Write your MySQL query statement below
SELECT employee_id
FROM Employees
WHERE salary < 30000 AND manager_id NOT IN (SELECT DISTINCT employee_id FROM Employees WHERE employee_id IS NOT NULL)
ORDER BY employee_id;

