/*
Oh no! Timmys been moved into the database divison of his software company but as we know Timmy loves making mistakes. Help Timmy keep his job by fixing his query...

Timmy works for a statistical analysis company and has been given a task of totaling the number of sales on a given day grouped by each department name and then each day.

SELECT 
s.transaction_date as day,
d.name,
COUNT(s.id)
FROM department d
JOIN sale s on d.id = s.id
group by day, d.name
order by name desc

Resultant table:
day (type: date) {group by} [order by asc]
department (type: text) {group by} [In a real world situation it is bad practice to name a column after a table]
sale_count (type: int)
*/

SELECT
  DATE(sale.transaction_date) as day,
  department.name as department,
  COUNT(sale.id) as sale_count
FROM department
  INNER JOIN sale ON department.id = sale.department_id 
  GROUP BY department.name, day
  ORDER BY day


