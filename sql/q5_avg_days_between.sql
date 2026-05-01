WITH daily_purchases AS (
  SELECT
    CustomerID,
    DATE(InvoiceDate) AS purchase_date
  FROM `sample-project-489102.online_retail.online_retail_store`
  GROUP BY CustomerID, DATE(InvoiceDate)
),
customer_dates AS (
  SELECT
    CustomerID,
    purchase_date,
    LAG(purchase_date) OVER (
      PARTITION BY CustomerID
      ORDER BY purchase_date
    ) AS prev_date
  FROM daily_purchases
),
customer_diff AS (
  SELECT
    CustomerID,
    DATE_DIFF(purchase_date, prev_date, DAY) AS days_between
  FROM customer_dates
  WHERE prev_date IS NOT NULL
)
SELECT
  CustomerID,
  ROUND(AVG(days_between), 1) AS avg_days_between_orders
FROM customer_diff
GROUP BY CustomerID
