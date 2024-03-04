-- 1.To get the total revenue_realized

SELECT ROUND(SUM(revenue_realized)/1000000,2) AS total_revenue_in_million
FROM fact_bookings;

-- 2.To get the total number of bookings happened
SELECT COUNT(booking_id) AS total_booking
 FROM fact_bookings;
 
 -- 3.To get the total capacity of rooms present in hotels
SELECT SUM(capacity) AS total_capacity
FROM fact_aggregated_bookings;

 -- 4.To get the total succesful bookings happened for all hotels
 SELECT SUM(successful_booking) AS total_successful_booking 
 FROM fact_aggregated_bookings;
 
  -- 5. Occupancy means total successful bookings happened to the total rooms available(capacity)
 SELECT SUM(successful_booking)*100/SUM(capacity) AS "Occupancy_%"
 FROM fact_aggregated_bookings;
 
  -- 6.Get the average ratings given by the customers 
 SELECT ROUND(AVG(rating_given),3) AS avg_rating 
 FROM fact_bookings;
 
  -- 7.To get the total number of days present in the data. 
 SELECT COUNT(DISTINCT date) AS total_no_days
 FROM dim_dates
 WHERE month(date) IN (5,6,7);

 -- 8.To get the"Cancelled" bookings out of all Total bookings happened 
 SELECT COUNT(booking_status) AS total_booking_cancelled FROM fact_bookings
 WHERE booking_status = "Cancelled";
 
 -- 9.calculating the cancellation percentage.
 SELECT 
	(SELECT COUNT(booking_status) 
	FROM fact_bookings 
	WHERE booking_status = "Cancelled") *100/COUNT(booking_status) AS total_booking_cancelled_pct 
 FROM fact_bookings;
 
 -- 10.To get the successful 'Checked out' bookings out of all Total bookings happened
 
 SELECT COUNT(booking_status) AS total_booking_Checked_out 
 FROM fact_bookings
 WHERE booking_status = "Checked out";
 
 -- 11.To get the"No Show" bookings out of all Total bookings happened 
 -- ("No show" means those customers who neither cancelled nor attend to their booked rooms)
 SELECT COUNT(booking_status) AS total_booking_No_Show 
 FROM fact_bookings
 WHERE booking_status = "No Show";
 
 -- 12.calculating the no show percentage.
  SELECT 
	(SELECT COUNT(booking_status) 
    FROM fact_bookings WHERE booking_status = "No Show") *100/COUNT(booking_status) AS total_booking_No_Show_pct 
 FROM fact_bookings;