'''
Question Link : https://leetcode.com/problems/rising-temperature/description/
Question      : 197. Rising Temperature
Difficulty    : Easy
Language Used : My SQL
'''

SELECT W1.id
FROM Weather W1
JOIN Weather W2 ON W1.recordDate = DATE_ADD(W2.recordDate, INTERVAL 1 DAY)
WHERE W1.temperature > W2.temperature;

--Time Complexity: O(n^2) where n is the number of records in the Weather table.
--Space Complexity: O(m) where m is the number of rows that satisfy both conditions.