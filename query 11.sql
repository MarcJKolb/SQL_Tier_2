SELECT a.firstname || " " || a.surname AS full_name, b.firstname || " " || b.surname AS recommended_by
FROM Members a
INNER JOIN Members b ON b.memid = a.recommendedby
ORDER BY a.surname;