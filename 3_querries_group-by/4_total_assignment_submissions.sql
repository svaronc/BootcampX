SELECT
  cohorts.name as cohort,
  count(assignment_submissions.id) as total_submissions
FROM
  cohorts
  JOIN students ON students.cohort_id = cohorts.id
  JOIN assignment_submissions ON assignment_submissions.student_id = students.id
GROUP BY
  cohort
ORDER BY
  total_submissions DESC;