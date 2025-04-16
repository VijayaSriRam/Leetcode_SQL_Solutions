'''
Question Link : https://leetcode.com/problems/product-sales-analysis-i/description/
Question      : 1068. Product Sales Analysis I
Difficulty    : Easy
Language Used : My SQL
'''

SELECT P.product_name, S.year, S.price
FROM Sales S
INNER JOIN Product P ON S.product_id = P.product_id;

--Time Complexity : O(n + m), where n is the number of rows in Sales and m is the number of rows in Product.
--Space Complexity : O(n), where n is the number of rows in Sales.