'''
Question Link : https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/
Question      : 570. Managers with at Least 5 Direct Reports
Difficulty    : Medium
Language Used : My SQL
'''

SELECT e1.name
FROM Employee e1 
INNER JOIN Employee e2 ON e1.id = e2.managerId
GROUP BY e1.id, e1.name
HAVING COUNT(e2.managerId) >= 5;

--Time Complexity: O(n log n) {Inner Join & Group By - O(n log n) + Count - O(n)}
--Space Complexity: O(n), where n is the number of managers in the Employee table.
