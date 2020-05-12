
SELECT
	substr(date,6,2) month,
	count(*) review_count
FROM 
	reviews
GROUP BY
	substr(date,6,2)
ORDER BY
	review_count DESC
