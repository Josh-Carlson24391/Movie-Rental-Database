

--QUERY 1: List all employees along with their respective manager names.
SELECT e.name, m.name from Employee e, Manager m
WHERE e.manager_id = m.manager_id;

