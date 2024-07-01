/*
For this challenge you need to create a simple DISTINCT statement, you want to find all the unique ages.

table schema
id
name
age
select table schema
age (distinct)
NOTE: Your solution should use pure SQL. Ruby is used within the test cases to do the actual testing.
*/

SELECT DISTINCT age FROM people 

-- as a preference, you could also add ORDER BY age DESC just to make the output more readable :)

