'''
Question Link : https://leetcode.com/problems/recyclable-and-low-fat-products/description/
Question      : 1757. Recyclable and Low Fat Products
Difficulty    : Easy
Language Used : My SQL
'''

SELECT product_id FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';

--Time Complexity: O(n) - where n is the number of rows in the Products table
--Space Complexity: O(m) - where m is the number of rows that satisfy both conditions