-- Query to retrieve the count of items stored in each warehouse
SELECT 
    warehouseName,
    COUNT(*) AS itemCount
FROM 
    warehouses w
JOIN 
    products p ON w.warehouseCode = p.warehouseCode
GROUP BY 
    warehouseName
