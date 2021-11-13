SELECT d.state, SUM(a.priceEach*a.quantityOrdered) as Total_Pembelian
FROM orderdetails a
LEFT JOIN products b
ON a.productCode = b.productCode
INNER JOIN orders c 
ON a.orderNumber = c.orderNumber
INNER JOIN customers d
ON c.customerNumber = d.customerNumber
GROUP BY d.state
ORDER by Total_Pembelian DESC LIMIT 10;