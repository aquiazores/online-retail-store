SELECT
  TRIM(Country) AS country,
  SUM(TotalPrice) AS revenue
FROM `sample-project-489102.online_retail.online_retail_store`
GROUP BY country
ORDER BY revenue DESC;
