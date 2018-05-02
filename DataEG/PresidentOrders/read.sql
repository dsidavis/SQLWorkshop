.mode tabs
.import orders.tsv  orders

.import customers.csv customer

.tables

select first_name, last_name, order_date, order_amount from customers c left join orders o on c.customer_id = o.customer_id;

select first_name, last_name, order_date, amount from customer c left join orders o on c.customer_id = o.customer_id;


select first_name, last_name, order_date, order_amount from customers c right join orders o on c.customer_id = o.customer_id;


select first_name, last_name, order_date, order_amount from customers c full join orders o on c.customer_id = o.customer_id;


