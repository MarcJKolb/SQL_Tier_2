SELECT Facilities.name, Members.firstname || " " || Members.surname AS full_name, IIF(Members.memid = 0, Bookings.slots * Facilities.guestcost, Bookings.slots * Facilities.membercost) AS total_cost
FROM Bookings
INNER JOIN Members ON Members.memid = Bookings.memid
INNER JOIN Facilities ON Facilities.facid = Bookings.facid
WHERE Bookings.starttime LIKE '2012-09-14%'
	AND total_cost > 30
GROUP BY full_name
ORDER BY full_name