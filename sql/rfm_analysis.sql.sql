-- =====================================================
-- PROJECT: E-Commerce Customer Segmentation (RFM)
-- AUTHOR: ARCHANA NAGESH SHALKE
-- DESCRIPTION: End-to-end customer segmentation using RFM model
-- TOOLS USED: SQL (SQLite), Python (Pandas), Power BI
-- =====================================================


-- =====================================================
-- 1. CUSTOMER DISTRIBUTION
-- =====================================================
SELECT 
    'Customer Distribution' AS analysis_type,
    segment,
    COUNT(*) AS total_customers,
    NULL AS total_revenue,
    NULL AS avg_value
FROM rfm_customer
GROUP BY segment


UNION ALL


-- =====================================================
-- 2. REVENUE ANALYSIS
-- =====================================================
SELECT 
    'Revenue Analysis' AS analysis_type,
    segment,
    COUNT(*) AS total_customers,
    ROUND(SUM(monetary), 2) AS total_revenue,
    ROUND(AVG(monetary), 2) AS avg_value
FROM rfm_customer
GROUP BY segment


UNION ALL


-- =====================================================
-- 3. CHURN RISK ANALYSIS (RECENCY)
-- =====================================================
SELECT 
    'Churn Risk (Recency)' AS analysis_type,
    segment,
    COUNT(*) AS total_customers,
    ROUND(AVG(recency), 2) AS total_revenue,
    NULL AS avg_value
FROM rfm_customer
GROUP BY segment


UNION ALL


-- =====================================================
-- 4. FREQUENCY DISTRIBUTION
-- =====================================================
SELECT 
    'Frequency Analysis' AS analysis_type,
    CAST(frequency AS TEXT) AS segment,
    COUNT(*) AS total_customers,
    NULL AS total_revenue,
    NULL AS avg_value
FROM rfm_customer
GROUP BY frequency


UNION ALL


-- =====================================================
-- 5. MONETARY SEGMENTATION
-- =====================================================
SELECT 
    'Monetary Segmentation' AS analysis_type,
    CASE 
        WHEN monetary < 100 THEN 'Low Value'
        WHEN monetary BETWEEN 100 AND 500 THEN 'Mid Value'
        ELSE 'High Value'
    END AS segment,
    COUNT(*) AS total_customers,
    ROUND(SUM(monetary), 2) AS total_revenue,
    ROUND(AVG(monetary), 2) AS avg_value
FROM rfm_customer
GROUP BY segment;


-- =====================================================
-- 6. TOP 10 HIGH VALUE CUSTOMERS
-- =====================================================
SELECT 
    customer_unique_id,
    segment,
    monetary
FROM rfm_customer
ORDER BY monetary DESC
LIMIT 10;


-- =====================================================
-- 7. HIGH VALUE AT RISK CUSTOMERS (RETENTION TARGET)
-- =====================================================
SELECT 
    customer_unique_id,
    monetary,
    recency,
    frequency
FROM rfm_customer
WHERE segment = 'At Risk'
AND monetary > 500
ORDER BY monetary DESC;


-- =====================================================
-- 8. LOW ENGAGEMENT CUSTOMERS (CHURN BASE)
-- =====================================================
SELECT 
    COUNT(*) AS low_engagement_customers
FROM rfm_customer
WHERE frequency = 1;


-- =====================================================
-- 9. HIGH VALUE BUT LOW FREQUENCY (DANGER ZONE)
-- =====================================================
SELECT 
    customer_unique_id,
    monetary,
    frequency
FROM rfm_customer
WHERE monetary > 500
AND frequency = 1
ORDER BY monetary DESC;


-- =====================================================
-- 10. CUSTOMER SPENDING RANK (WINDOW FUNCTION)
-- =====================================================
SELECT 
    customer_unique_id,
    monetary,
    RANK() OVER (ORDER BY monetary DESC) AS spending_rank
FROM rfm_customer;


-- =====================================================
-- 11. CUSTOMER TIERS (NTILE SEGMENTATION)
-- =====================================================
SELECT 
    customer_unique_id,
    monetary,
    NTILE(5) OVER (ORDER BY monetary DESC) AS customer_tier
FROM rfm_customer;


-- =====================================================
-- 12. VIP CUSTOMERS (TOP 20%)
-- =====================================================
SELECT *
FROM (
    SELECT 
        customer_unique_id,
        monetary,
        NTILE(5) OVER (ORDER BY monetary DESC) AS tier
    FROM rfm_customer
)
WHERE tier = 1;


-- =====================================================
-- 13. SEGMENT PERCENTAGE CONTRIBUTION
-- =====================================================
SELECT 
    segment,
    ROUND(COUNT() * 100.0 / (SELECT COUNT() FROM rfm_customer), 2) AS percentage
FROM rfm_customer
GROUP BY segment
ORDER BY percentage DESC;


-- =====================================================
-- END OF PROJECT
-- =====================================================