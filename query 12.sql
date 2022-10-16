SELECT Facilities.name, SUM(IIF(Bookings.memid != 0, slots, 0)) AS slot_usage
FROM Bookings
INNER JOIN Facilities ON Facilities.facid = Bookings.facid
GROUP BY Facilities.name;