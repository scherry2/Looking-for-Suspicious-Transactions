SELECT * FROM transaction
WHERE DATE_PART('hour',transaction.date)>=7 and DATE_PART('hour',transaction.date)<9
ORDER BY amount DESC LIMIT 100;

SELECT count(transaction.amount) FROM transaction
WHERE transaction.amount<2.00;

SELECT merchant.name, count(transaction.amount) FROM merchant 
JOIN transaction on merchant.id=transaction.id_merchant 
WHERE transaction.amount<2.00
GROUP BY merchant.name;