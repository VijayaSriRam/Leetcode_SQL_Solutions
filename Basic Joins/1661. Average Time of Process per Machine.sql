'''
Question Link : https://leetcode.com/problems/average-time-of-process-per-machine/description/
Question      : 1661. Average Time of Process per Machine
Difficulty    : Easy #More like Medium
Language Used : My SQL
'''

SELECT machine_id, ROUND(AVG(end_time - start_time), 3) AS processing_time
FROM (
    SELECT machine_id, process_id,
        MAX(CASE WHEN activity_type = 'start' THEN timestamp END) AS start_time,
        MAX(CASE WHEN activity_type = 'end' THEN timestamp END) AS end_time
    FROM Activity
    GROUP BY machine_id, process_id
) AS process_times
GROUP BY machine_id;

--Time Complexity: O(n log n) {Scanning the table & Case statements - (n) + (n log n) for sorting & COUNT}
--Space Complexity: O(n), where n is the number of rows in the table.
