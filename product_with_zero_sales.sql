-- Query to identify products with zero sales and the warehouse it is stored.
SELECT 
    p.productCode,
    p.productName,
    p.quantityInStock,
    SUM(od.quantityOrdered) AS totalSales,
    w.warehouseCode,
    w.warehouseName
FROM 
    products p
LEFT JOIN 
    orderDetails od ON p.productCode = od.productCode
LEFT JOIN
    warehouses w ON p.warehouseCode = w.warehouseCode
GROUP BY 
    p.productCode, p.productName, p.quantityInStock, w.warehouseCode, w.warehouseName
HAVING 
    totalSales IS NULL OR totalSales = 0
