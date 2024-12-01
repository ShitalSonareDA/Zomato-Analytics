Use zomato_analysis;
Select * from Restaurants;

/*Find the Numbers of Resturants based on City and Country*/
SELECT 
    r.City,
    c.CountryName,
    COUNT(*) AS NumberOfRestaurants
FROM 
    Restaurants r
JOIN 
    CountryMap c ON r.CountryCode = c.CountryCode
GROUP BY 
    r.City, 
    c.CountryName
ORDER BY 
    c.CountryName, 
    r.City;

