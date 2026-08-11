CREATE VIEW v_cleaned_sales_data AS
SELECT 
    `order number` AS order_number,
    `state code` AS state_code,
    `customer name` AS customer_name,
    'order date' AS order_date,
    `ordered status` AS order_status,
    `product` AS product_name,
    `category` AS category,
    `brand` AS brand,
    
  
    COALESCE(cost, 0) AS cost,
    COALESCE(sale, 0) AS sale,
    COALESCE(quantity, 1) AS quantity,
    
  
    (COALESCE(cost, 0) * COALESCE(quantity, 1)) AS total_cost,
    (COALESCE(sale, 0) * COALESCE(quantity, 1)) AS total_sales,
    
  
    COALESCE(supervisor, 'Unknown') AS supervisor_name

FROM raw_orders

WHERE `order number` IS NOT NULL AND `order number` != '';
