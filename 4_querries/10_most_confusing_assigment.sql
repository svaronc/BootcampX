SELECT
  assignments.id,
  assignments.name,
  day,
  chapter,
  count(assistance_requests.*) as total_request
FROM
  assignments
  JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY
  total_request DESC;