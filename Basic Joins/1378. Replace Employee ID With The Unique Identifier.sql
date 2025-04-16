'''
Question Link : https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/
Question      : 1378. Replace Employee ID With The Unique Identifier
Difficulty    : Easy
Language Used : My SQL
'''

--My 1st Approach:
SELECT 
    CASE
       WHEN EU.unique_id IS NOT NULL THEN EU.unique_id
       ELSE NULL
    END as unique_id, E.name
FROM EmployeeUNI as EU
RIGHT JOIN Employees as E 
    ON E.id = EU.id;

--Time Complexity: O(n + m) where n is the number of rows in Employee and m is the number of rows in EmployeeUNI table.
--Space Complexity: O(n) where n is the number of rows in Employee table.

--My 2nd Approach:
SELECT EU.unique_id, E.name
FROM Employees E
LEFT JOIN EmployeeUNI EU ON E.id = EU.id;

'''
Same time and space complexity as above.
'''