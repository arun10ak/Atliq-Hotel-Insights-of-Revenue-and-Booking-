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

- dim_date – This table contains dates, week numbers, and day type (weekend and weekday).
- dim_hotels – This table contains data like property id, property name, category, and cities.
- dim_rooms – This table includes room_id and room class.
- fact_aggregated_bookings – This is a fact tale that contains property id, check-in date, room category, successful bookings, and capacity.
- fact_bookings – This is another fact table that contains extra data like financials. The data are booking id, property id, booking date, check-out date, check-in date, and number of guests.

### Depth overview of the above table using  [Metadata File](https://github.com/arun10ak/Power-BI-Atliq-Hotel-Insights-of-Revenue-and-Booking/blob/main/meta_data_hospitality.txt)

### Data Model:
Data modeling is a connection between different tables using a common table between them. In this project, Start Schema is used for Data Modelling where all the dimension tables were connected with Fact tables. It is a star schema where the fact table/tables are in the center and they are surrounded by dimension tables.

![image](https://github.com/arun10ak/Power-BI-Atliq-Hotel-Insights-of-Revenue-and-Booking/assets/117892039/f8ac83d5-35e5-4004-9910-f4c95d7676b4)

