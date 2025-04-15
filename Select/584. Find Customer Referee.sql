'''
Question Link : http://leetcode.com/problems/find-customer-referee/description/
Question      : 584. Find Customer Referee
Difficulty    : Easy
Language Used : My SQL
'''

SELECT name FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;

--Time Complexity: O(n) - where n is the number of rows in the Customer table
--Space Complexity: O(m) - where m is the number of rows that satisfy the condition