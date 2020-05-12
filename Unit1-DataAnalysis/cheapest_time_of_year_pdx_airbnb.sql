WITH
	month_price
AS (
	SELECT
		cast(replace(replace(price,'$',''),',','') as real) price_real,
		substr(date,6,2) 'month'
	FROM 
		calendar
	WHERE
		available = 't'
	)
	


SELECT 
	round(avg(price_real),2) avg_price_real,
	month
FROM 
	month_price
GROUP BY
	month
ORDER BY
	avg_price_real