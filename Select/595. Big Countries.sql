'''
Question Link : https://leetcode.com/problems/big-countries/description/
Question      : 595. Big Countries
Difficulty    : Easy
Language Used : My SQL
'''

SELECT name, population, area
FROM World
WHERE (population >= 25000000) OR (area >= 3000000);

--Time Complexity: O(n) - where n is the number of rows in the World table
--Space Complexity: O(m) - where m is the number of rows that satisfy the condition