Query 1 — Revenue Loss by Payment Type

SELECT payment_type, SUM(revenue) AS total_loss
FROM order_df
WHERE order_status != 'delivered'
GROUP BY payment_type
ORDER BY total_loss DESC;

What it Shows:

Total revenue loss for each payment method
Identifies which payment type contributes most to revenue leakage
Helps pinpoint primary source of financial loss

Query 2 — Order Status Distribution (Funnel View)

SELECT order_status, COUNT(*) AS total_orders
FROM order_df
GROUP BY order_status
ORDER BY total_orders DESC;

What it Shows:

Number of orders in each status
Helps understand order completion vs failure rates
Acts as a basic funnel analysis

Query 3 — Payment Type vs Order Status Analysis

SELECT payment_type, order_status, COUNT(*) AS total_orders
FROM order_df
GROUP BY payment_type, order_status;

What it Shows:

Relationship between payment method and order outcome
Identifies which payment methods have higher failure counts
Helps analyze failure patterns across payment types




