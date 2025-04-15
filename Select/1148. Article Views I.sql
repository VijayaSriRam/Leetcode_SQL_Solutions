'''
Question Link : https://leetcode.com/problems/article-views-i/description/
Question      : 1148. Article Views I
Difficulty    : Easy
Language Used : My SQL
'''

SELECT DISTINCT author_id AS id
FROM views
WHERE author_id = viewer_id
ORDER BY id;

--Time Complexity: O(n log n) - {O(n) for scanning all rows and checking the condition, O(log n) for sorting the result set}
--Space Complexity: O(m) - where m is the number of distinct authors who are also viewers.