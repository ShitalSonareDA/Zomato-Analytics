Use zomato_analysis;

select 
	case 
    when price_range=1 then "0-500" 
    when price_range=2 then "500-3000" 
    when Price_range=3 then "3000-10000" 
    when Price_range=4 then ">10000" 
    End price_range_new,     
count(restaurantid)
from 
	restaurants
		group by 
			price_range
		order by 
			Price_range asc;