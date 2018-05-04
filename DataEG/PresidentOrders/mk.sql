create table customer (
  customer_id INT,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  email  VARCHAR(30),
  address VARCHAR(50),
  city     VARCHAR(30),
  state   VARCHAR(2),
  zipcode VARCHAR(5)
);


create table orders (
  order_id INT,
  order_date VARCHAR(12),
  amount REAL,
  customer_id INT
);
