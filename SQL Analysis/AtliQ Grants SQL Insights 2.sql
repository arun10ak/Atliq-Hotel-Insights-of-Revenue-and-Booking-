 -- 13.To show the percentage contribution of each booking platform for bookings in hotels.
-- We have booking platforms like makeyourtrip, logtrip, tripster etc)
 
 SELECT booking_platform,COUNT(*) AS contribution_booking_platform,
 COUNT(*)*100/(SELECT COUNT(*) FROM fact_bookings) AS pct_contribution_booking_platform
 FROM fact_bookings
 GROUP BY booking_platform;
 
-- 14.To show the percentage contribution of each room class over total rooms booked.
-- We have room classes like Standard, Elite, Premium, Presidential.

WITH cte AS(
 SELECT r.room_class
 FROM fact_bookings b
 JOIN dim_rooms r
 ON b.room_category = r.room_id)
 
 SELECT room_class,COUNT(*) AS total_booking_room_cls,
 COUNT(*)*100/(SELECT COUNT(*) FROM cte) AS pct_total_booking_room_cls
 FROM cte
 GROUP BY room_class;
 
  
-- 15.Calculate the ADR(Average Daily rate)
-- It is the ratio of  revenue generated to the total rooms booked/sold. 
-- It is the measure of the average paid for rooms sold in a given time period

 SELECT ROUND(SUM(revenue_generated)/COUNT(booking_id),2) AS ADR
 FROM fact_bookings;
 
 -- 16.calculate  the realisation percentage.
-- It is nothing but the succesful "checked out" percentage over all bookings happened.

SELECT 
	(SELECT COUNT(*) 
	 FROM fact_bookings
	 WHERE booking_status = 'Checked Out')*100/COUNT(*) AS "realisation_%"
FROM fact_bookings;

/* 17.Calculate the RevPAR(Revenue Per Available Room)
RevPAR represents the revenue generated per available room, whether or not they are occupied. 
RevPAR helps hotels measure their revenue generating performance to accurately price rooms. 
RevPAR can help hotels measure themselves against other properties or brands.*/

SELECT sum(revenue_generated)/(SELECT SUM(capacity) FROM fact_aggregated_bookings) AS RevPAR
FROM fact_bookings;

/* 18.calculate DBRN(Daily Booked Room Nights)
This metrics tells on average how many rooms are booked for a day considering a time period*/

SELECT  ROUND(COUNT(*)/(SELECT COUNT(DISTINCT date) FROM dim_dates)) AS DBRN
FROM fact_bookings;

-- 19.calculate DSRN(Daily Sellable Room Nights)
-- This metrics tells on average how many rooms are ready to sell for a day considering a time period

SELECT ROUND(SUM(capacity)/(SELECT COUNT(DISTINCT date) FROM dim_dates)) AS DSRN
FROM fact_aggregated_bookings;

/* 20.calculate DURN(Daily Utilized Room Nights)
This metric tells on average how many rooms are succesfully utilized by customers for a day considering a time period*/

SELECT ROUND(COUNT(*)/(SELECT COUNT(DISTINCT date) FROM dim_dates)) AS DURN 
FROM fact_bookings
WHERE booking_status = 'Checked Out';


SELECT ROUND((SELECT COUNT(*) FROM fact_bookings WHERE booking_status = 'Checked Out')/(SELECT COUNT(DISTINCT date) FROM dim_dates)) AS DURN
FROM fact_bookings
LIMIT 1;

