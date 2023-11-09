# Write your MySQL query statement below
# Write your MySQL query statement below
select name 
from employee 
where id in
(select managerId 
from Employee
Group by managerId
Having count(managerId)>=5)