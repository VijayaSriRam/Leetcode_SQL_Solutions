'''
Question Link : https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/
Question      : 1581. Customer Who Visited but Did Not Make Any Transactions
Difficulty    : Easy
Language Used : My SQL
'''

SELECT V.customer_id, COUNT(V.visit_id) as count_no_trans
FROM Visits V
LEFT JOIN Transactions T ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id;

--Time Complexity: O(n + m) where n is the number of visits and m is the number of transactions.
--Space Complexity: O(n) where n is the number of visits.