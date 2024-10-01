/*
1.  Find all entries with first names beginning with S
2. Find all entries and sort by birthday
3. Get the avg salary of employees 
4. Same as above but sort by descending order.
*/

SELECT * FROM  EMPLOYEES
WHERE F_NAME LIKE 'S%' ;

SELECT * FROM EMPLOYEES ORDER BY B_DATE;

SELECT DEP_ID, AVG(SALARY)
FROM EMPLOYEES 
GROUP BY DEP_ID
HAVING AVG(SALARY) >= 60000;

SELECT DEP_ID, AVG(SALARY)
FROM EMPLOYEES 
GROUP BY DEP_ID
HAVING AVG(SALARY) >= 60000
ORDER BY AVG(SALARY) DESC ;
