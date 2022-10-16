SELECT SUBSTR(Bookings.starttime, 6, 2) || '/' || SUBSTR(Bookings.starttime, 1, 4) AS month, Facilities.name, SUM(IIF(Bookings.memid != 0, slots, 0)) AS slot_usage
FROM Bookings
INNER JOIN Facilities ON Facilities.facid = Bookings.facid
GROUP BY month, Facilities.name
ORDER BY month, Facilities.name;