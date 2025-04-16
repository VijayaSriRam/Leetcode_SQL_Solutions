'''
Question Link : https://leetcode.com/problems/confirmation-rate/description/
Question      : 1934. Confirmation Rate
Difficulty    : Medium
Language Used : My SQL
'''

SELECT s.user_id, ROUND(IFNULL(AVG(c.action = 'confirmed'), 0), 2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id;

-- Time Complexity : O(n + m log m) {n = number of signups, m = number of confirmations), Left join is O(n + m) and group by is O(n log n)}
-- Space Complexity : O(n + m)