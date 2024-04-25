-- Query to retrive shipping time
SELECT
    orderNumber,
    orderDate,
    shippedDate,
    TIMESTAMPDIFF(HOUR, orderDate, shippedDate) AS hoursToShip
FROM
    orders
WHERE
    shippedDate IS NOT NULL
    AND TIMESTAMPDIFF(HOUR, orderDate, shippedDate) > 24
ORDER BY hoursToShip;
