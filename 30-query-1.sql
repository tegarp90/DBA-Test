SELECT a.state, SUM(b.amount) as Total
FROM customers a
INNER JOIN payments b
ON a.customerNumber = b.customerNumber 
WHERE a.state IS NOT NULL
GROUP BY a.state
ORDER BY Total DESC LIMIT 10;