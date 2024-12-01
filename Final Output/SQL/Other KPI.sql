Use zomato_analysis;
			
/* top 5 restaurants who has more number of votes */

select  countryname, restaurantname, votes, Average_Cost_for_two 
from restaurants 
	inner join countrymap on restaurants.countrycode=countrymap.countrycode
		group by 
			countrymap.countryname, 
				restaurantname,
                votes,
                Average_Cost_for_two
		order by 
        votes desc 
        limit 5;

/* highest rating restaurants in each country  */    
SELECT
	countryname, 
    restaurantname, 
    rating AS highest_rating
		FROM (
			SELECT countrymap.countryname, restaurants.restaurantname, restaurants.rating, 
			ROW_NUMBER() OVER (PARTITION BY countrymap.countryname ORDER BY restaurants.rating ) as rn
		FROM restaurants
			INNER JOIN countrymap ON restaurants.countrycode = countrymap.countrycode
) AS ranked
WHERE rn = 1;
