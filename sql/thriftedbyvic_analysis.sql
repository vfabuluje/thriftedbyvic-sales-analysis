-- ===============================
-- Sales by Hour (Time of Day)
-- ===============================
SELECT
  CAST(substr(time_sold, 1, instr(time_sold, ':') - 1) AS INTEGER) AS hour,
  COUNT(*) AS sales_count
FROM sales
WHERE time_sold IS NOT NULL
GROUP BY hour
ORDER BY hour;

-- ===============================
-- Average Days to Sell by Platform
-- ===============================
SELECT
  platform,
  ROUND(AVG(days_to_sell), 1) AS avg_days_to_sell,
  COUNT(*) AS total_sales
FROM (
  SELECT
    platform,
    julianday(
      printf(
        '20%02d-%02d-%02d',
        substr(date_sold, 7, 2),
        substr(date_sold, 1, 2),
        substr(date_sold, 4, 2)
      )
    )
    -
    julianday(
      printf(
        '20%02d-%02d-%02d',
        substr(date_listed, 7, 2),
        substr(date_listed, 1, 2),
        substr(date_listed, 4, 2)
      )
    ) AS days_to_sell
  FROM sales
  WHERE date_sold IS NOT NULL
    AND date_listed IS NOT NULL
)
WHERE days_to_sell BETWEEN 0 AND 365
GROUP BY platform
ORDER BY avg_days_to_sell;

-- ===============================
-- Pricing by Platform
-- ===============================
SELECT
  platform,
  ROUND(AVG(sale_price), 2) AS avg_price,
  MIN(sale_price) AS min_price,
  MAX(sale_price) AS max_price,
  COUNT(*) AS total_sales
FROM sales
GROUP BY platform
ORDER BY avg_price DESC;