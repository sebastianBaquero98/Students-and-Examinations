SELECT a.student_id, a.student_name, b.subject_name,count(c.subject_name) as attended_exams
FROM (Students a CROSS JOIN Subjects as b )
  LEFT OUTER JOIN Examinations as c ON a.student_id = c.student_id and b.subject_name = c.subject_name
GROUP BY  a.student_name, b.subject_name
ORDER BY student_id, b.subject_name
