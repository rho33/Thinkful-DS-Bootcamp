
SELECT 
	cast(replace(replace(price,'$',''),',','') as real) price_real,
	last_scraped,
	listing_url,
	number_of_reviews,
	availability_365,
	bedrooms,
	bathrooms,
	neighbourhood
FROM 
	listings
WHERE 
	number_of_reviews > 0 and availability_365 > 0
ORDER BY 
	price_real DESC
Limit 
	10

