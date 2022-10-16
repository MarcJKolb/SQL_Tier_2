SELECT Facilities.name, ROUND(SUM(IIF(Bookings.memid != 0, Bookings.slots * Facilities.membercost, Bookings.slots * Facilities.guestcost) + IIF(Bookings.memid != 0, Bookings.slots * Facilities.guestcost, 0)), 2) AS total_revenue
FROM Bookings
INNER JOIN Members ON Members.memid = Bookings.memid
INNER JOIN Facilities ON Facilities.facid = Bookings.facid
GROUP BY Facilities.name;