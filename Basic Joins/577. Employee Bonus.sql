'''
Question Link : https://leetcode.com/problems/employee-bonus/description/
Question      : 577. Employee Bonus
Difficulty    : Easy
Language Used : My SQL
'''

SELECT E.name, B.bonus
FROM Employee E
LEFT JOIN Bonus B
    ON E.empID = B.empID
WHERE B.bonus < 1000 OR B.bonus IS NULL;

--Time Complexity: O(n + m) where n is the number of rows in Employee table and m is the number of rows in Bonus table.
--Space Complexity: O(n) where n is the number of rows in Employee table. 