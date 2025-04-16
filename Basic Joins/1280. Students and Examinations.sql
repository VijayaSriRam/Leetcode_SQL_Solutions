'''
Question Link : https://leetcode.com/problems/students-and-examinations/description/
Question      : 1280. Students and Examinations
Difficulty    : Easy
Language Used : My SQL
'''

SELECT s.student_id, s.student_name, sub.subject_name, COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e ON s.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name;

--Time Complexity: O(n*m*log(n*m)), where n is the number of students and m is the number of subjects.
--Space Complexity: O(n*m)