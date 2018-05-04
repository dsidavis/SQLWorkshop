SELECT first_name, last_name, order_date, amount FROM customer c INNER JOIN orders o ON c.customer_id = o.customer_id;

SELECT first_name, last_name, order_date, amount FROM customer c LEFT JOIN orders o on c.customer_id = o.customer_id;

SELECT first_name, last_name, order_date, order_amount FROM customers c RIGHT JOIN orders o on c.customer_id = o.customer_id;


SELECT first_name, last_name, order_date, order_amount FROM customers c FULL JOIN orders o on c.customer_id = o.customer_id;


