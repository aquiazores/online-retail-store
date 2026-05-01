SELECT
  YearMonth,
  SUM(TotalPrice) AS revenue
FROM `sample-project-489102.online_retail.online_retail_store`
GROUP BY YearMonth
ORDER BY YearMonth ASC;
