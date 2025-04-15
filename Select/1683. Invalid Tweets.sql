'''
Question Link : https://leetcode.com/problems/invalid-tweets/description/
Question      : 1683. Invalid Tweets
Difficulty    : Easy
Language Used : My SQL
'''

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;

--Time Complexity: O(n), where n is the number of rows in the table.
--Space Complexity: O(m), where m is the number of tweets that have content with more than 15 characters.