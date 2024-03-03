# AtliQ Grand Insights [SQL | Power BI |]
---
## SQL Data Exploration & Power BI Dashboard
### Project Overview:
--- 
#### Title: Enhancing Revenue Management for AtliQ Grands
**Domain:  Hospitality**      
**Function: Revenue**

#### Introduction:
AtliQ Grands, a prominent player in the luxury/business hotels sector in India, is facing challenges in maintaining its market share and revenue due to ineffective decision-making processes within its management. To address this issue, the revenue management team has initiated a project to leverage Business and Data Intelligence to identify gaps and make informed decisions. The key objective is to revitalize revenue generation strategies and regain competitiveness in the market.

#### Project Goals:

- Identify key metrics to gauge the performance and revenue potential of AtliQ Grands' hotels.
- Develop a comprehensive dashboard that visualizes critical metrics for easy interpretation by stakeholders.
- Generate actionable insights from the data to guide strategic decision-making and revenue optimization efforts.

#### Insights:

❇️ SQL - [Ad-Hoc Insights]()

❇️ Novypro Power BI Dashboard - [Live Report Link](https://www.novypro.com/project/atliq-hospitality-analysis-24)

### Data Source: [Dataset](https://github.com/arun10ak/Power-BI-Atliq-Hotel-Insights-of-Revenue-and-Booking/tree/main/Dataset)
---

- dim_date – This table contains dates, week numbers, and day type (weekend and weekday).
- dim_hotels – This table contains data like property id, property name, category, and cities.
- dim_rooms – This table includes room_id and room class.
- fact_aggregated_bookings – This is a fact tale that contains property id, check-in date, room category, successful bookings, and capacity.
- fact_bookings – This is another fact table that contains extra data like financials. The data are booking id, property id, booking date, check-out date, check-in date, and number of guests.

### Depth overview of the above table using  [Metadata File](https://github.com/arun10ak/Power-BI-Atliq-Hotel-Insights-of-Revenue-and-Booking/blob/main/meta_data_hospitality.txt)

### Data Model:
---
Data modeling is a connection between different tables using a common table between them. In this project, Start Schema is used for Data Modelling where all the dimension tables were connected with Fact tables. It is a star schema where the fact table/tables are in the center and they are surrounded by dimension tables.

![image](https://github.com/arun10ak/Power-BI-Atliq-Hotel-Insights-of-Revenue-and-Booking/assets/117892039/f8ac83d5-35e5-4004-9910-f4c95d7676b4)

### Key Insights Derived from The Report:
---
#### For Overall Report :
1. Overall Ratings are 3.62 (Out of 5) and those are consistent.
2. In the 2nd and 3rd week of all months the drop in no. booking has been noticed. It COULD HAVE BEEN COMMON across the industry.
*Suggestion:* Travellers prefer to travel either in the month starting or towards the end of the month. So AtliQ Grand's marketing team should design special offers to cope with the md-month fall.
3. Cancellation Rates don't seem to be the reason for the sudden drop in revenue since it has been consistent from 24-25% throughout all months.
*Suggestion:* Atliq should also try to improve upon it in general to achieve better utilization of capacity.
4. A significant negative value of variance can be noticed in July 2022.A notable -11.61% drop in Revenue is majorly contributed by,
- 12.14% drop in Total Bookings
- 14.15% drop in Occupancy %
- 62.21% of unutilized Capacity, which is 11.13% higher than the past month.
  
#### For Booking and Revenue Report:
1. MUMBAI is the top city throughout all months in booking as well as revenue.
2. Bangalore is the city with the lowest occupancy rate throughout all months, still it's the second-highest city contributing to Revenue.
3. Delhi is the city that has the lowest performance overall.
4. Atliq Palace and Atliq Exotica are the highest contributing hotels.
5. Business Hotel contributing less to the revenue as well as their Avg. Rating is a matter of concern, especially Atliq Seasons.
6. Elite is the winning horse with the highest contribution to revenue, and the 2nd highest occupancy. However, little down can be seen in its cancellation rate in the last two months
7. Presidential is 2nd lowest in Revenue contribution. still, they seem to be maintaining higher occupancy% throughout all months.
8. Make my trip is better channel contributing around 19-20% to the revenue.
9. However major revenue around 40% is coming from unrecognized sources which need to be identified for better marketing efforts.

