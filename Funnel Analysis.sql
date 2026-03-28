-- Funnel Analysis
SELECT 
    COUNT(DISTINCT CASE WHEN event_type = 'view' THEN user_id END) AS views,
    COUNT(DISTINCT CASE WHEN event_type = 'cart' THEN user_id END) AS carts,
    COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) AS purchases
FROM events;

-- Conversion Rates
SELECT 
    COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) * 1.0 /
    COUNT(DISTINCT CASE WHEN event_type = 'view' THEN user_id END) AS view_to_purchase,
    
    COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) * 1.0 /
    COUNT(DISTINCT CASE WHEN event_type = 'cart' THEN user_id END) AS cart_to_purchase
FROM events;

-- Repeat vs New Customers
SELECT 
    customer_id,
    COUNT(order_id) AS total_orders,
    CASE 
        WHEN COUNT(order_id) > 1 THEN 'Repeat'
        ELSE 'New'
    END AS customer_type
FROM orders
GROUP BY customer_id;

-- Revenue by Customer Type
SELECT 
    customer_type,
    SUM(revenue) AS total_revenue
FROM (
    SELECT 
        customer_id,
        SUM(revenue) AS revenue,
        CASE 
            WHEN COUNT(order_id) > 1 THEN 'Repeat'
            ELSE 'New'
        END AS customer_type
    FROM orders
    GROUP BY customer_id
) t
GROUP BY customer_type;

-- Revenue Trend
SELECT 
    order_date,
    SUM(revenue) AS daily_revenue
FROM orders
GROUP BY order_date
ORDER BY order_date;

-- Revenue by Region
SELECT 
    c.region,
    SUM(o.revenue) AS total_revenue
FROM orders o
JOIN customers c 
ON o.customer_id = c.customer_id
GROUP BY c.region;