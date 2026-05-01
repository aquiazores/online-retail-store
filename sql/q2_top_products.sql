SELECT
  Description,
  SUM(TotalPrice) AS revenue
FROM `sample-project-489102.online_retail.online_retail_store`
GROUP BY Description
ORDER BY revenue DESC
LIMIT 10;
