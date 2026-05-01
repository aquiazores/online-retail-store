WITH customer_orders AS (
  SELECT
    CustomerID,
    COUNT(DISTINCT Invoice) AS order_count
  FROM `sample-project-489102.online_retail.online_retail_store`
  GROUP BY CustomerID
)

SELECT
  CASE 
    WHEN order_count > 1 THEN 'Repeat'
    ELSE 'One-time'
  END AS customer_type,
  COUNT(*) AS customer_count
FROM customer_orders
GROUP BY customer_type
