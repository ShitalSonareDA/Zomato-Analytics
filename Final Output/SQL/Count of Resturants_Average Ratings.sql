Use zomato_analysis;
Select * from Restaurants;

SELECT 
    CASE
        WHEN Rating BETWEEN 1.0 AND 1.9 THEN '1.0-1.9'
        WHEN Rating BETWEEN 2.0 AND 2.9 THEN '2.0-2.9'
		WHEN Rating BETWEEN 3.0 AND 3.9 THEN '3.0-3.9'
        WHEN Rating BETWEEN 4.0 AND 4.9 THEN '4.0-4.9'
        WHEN Rating = 5.0 THEN '5.0'
        ELSE 'Other'
    END AS RatingRange,
    COUNT(*) AS NumberOfRestaurants
FROM 
    Restaurants
GROUP BY 
    RatingRange
ORDER BY 
    RatingRange;

