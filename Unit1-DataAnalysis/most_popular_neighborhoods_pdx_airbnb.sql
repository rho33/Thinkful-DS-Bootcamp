SELECT
	neighbourhood_cleansed,
	sum(number_of_reviews) total_reviews,
	sum(reviews_per_month) total_reviews_per_month,
	count(id) total_listings,
	round(count(id)/sum(reviews_per_month),3) reviews_per_month_per_listing
FROM
	listings
GROUP BY
	neighbourhood_cleansed
ORDER BY
	total_reviews_per_month DESC