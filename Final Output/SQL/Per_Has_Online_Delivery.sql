Use zomato_analysis;
Select * from Restaurants;

SELECT 
    Has_Online_delivery,
    COUNT(*) AS NumberOfRestaurants,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM restaurants)), 2) AS Percentage
FROM 
    restaurants
GROUP BY 
    Has_Online_delivery;


