Use zomato_analysis;
Select * from Restaurants;

SELECT 
    YEAR(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) AS Year,
	QUARTER(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) As Quarter,
    MONTH(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) AS Month,
    COUNT(*) AS NumberOfRestaurants
FROM 
    Restaurants
GROUP BY 
    YEAR(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)),
    QUARTER(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)),
    MONTH(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE))
ORDER BY 
    Year, 
    QUARTER,
    Month;
