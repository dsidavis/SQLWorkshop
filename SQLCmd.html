<!DOCTYPE html>
<html>
  <head>
    <title>SQL in R</title>
    <meta charset="utf-8">
    <style>
      @import url(https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz);
      @import url(https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic);
      @import url(https://fonts.googleapis.com/css?family=Ubuntu+Mono:400,700,400italic);

      body { font-family: 'Droid Serif'; }
      h1, h2, h3 {
        font-family: 'Yanone Kaffeesatz';
        font-weight: normal;
      }
      .remark-code, .remark-inline-code { font-family: 'Ubuntu Mono'; }
    </style>
  </head>
  <body>
    <textarea id="source">

class: center, middle

# SQL in R


## [https://github.com/dsidavis/SQLinR](https://github.com/dsidavis/SQLinR)

### Duncan Temple Lang

<div style="clear: both"/>

<!-- <hr width="50%"/> -->
<img src="http://dsi.ucdavis.edu/images/dsi_banner.png" height="40%"></img>

---
layout: true
<img style="float: right" src="http://dsi.ucdavis.edu/images/dsi_brand_logo.png"></img>

---


# SELECT

SELECT is the workhorse of most SQL queries.

1. Get one or more columns from a table
```
SELECT * FROM orders;
SELECT amount FROM orders;
SELECT amount, order_date FROM orders;
```

---
# SELECT - filtering rows

```
SELECT * FROM orders WHERE amount > 100;
```
```
SELECT * FROM customer WHERE state = 'VA';
SELECT * FROM customer WHERE first_name = 'James';
```

---

# Comparison operators

+ We intuited = and > 
+ Also <,  >=, <=, <>  (not equal)

+ IN
```
SELECT * FROM customer WHERE first_name IN ('John', 'James');
```

+ LIKE for string comparisons
   + `column LIKE pattern`
   + Pattern similar but different to regular expressions
   + % - zero or more characters
   + _ - any single character
```
SELECT * FROM customer WHERE zipcode LIKE  '22%';
```

+ `BETWEEN`
```
SELECT customer_id, amount FROM  orders WHERE amount BETWEEN 20 AND 80;
```


---

# Gotchas with SQL LIKE operator

+ Can be different in each SQL engine
+ LIKE can be case insensitive.
+ May need to escape the special symbols.
   
+ SQLite has GLOB function
   + case sensitive & uses UNIX shell wildcards

---
# WHERE with Multiple Conditions


+ Combine conditions with AND, OR

```
SELECT * FROM customer WHERE state = 'VA';
SELECT * FROM orders WHERE amount > 100 AND customer_id = 1;
```

+ Negate the condition with NOT

```
SELECT * FROM customer WHERE NOT state = 'VA';
```

---

# Useful Qualifiers for SELECT

The following filter the rows returned in the result set.

+ `SELECT  DISTINCT `
```
SELECT DISTINCT customer_id FROM orders;
```
   + Note appears just after SELECT and applies to one or more columns
   + DISTINCT means entire row
      +  A B  and A C are distinct
	  +  A and A are not distinct
	  +  A B   and A B are not distinct

+ Post-processing the result
   + LIMIT - give the first n rows
   + LIMIT n OFFSET o - n rows starting from the o-th row
   + ORDER BY - order the results by one or more columns in the result set
```
SELECT * from orders ORDER BY amount;
```

+ Can change the order from increasing to decreasing with, e.g.,
```
ORDER BY amount DESC;
```

---

# Why use Qualifiers from R

What's the difference between

1.
```
a = dbGetQuery(con, "SELECT * FROM Table;")
a[1:50, ]
```
and
```
a = dbGetQuery(con, "SELECT * FROM Table LIMIT 50;")
```

2. 
```
a = dbGetQuery(con, "SELECT * FROM Table;")
a[order(a$x), ]
```
and
```
a = dbGetQuery(con, "SELECT * FROM Table ORDER BY x;")
```


---

# Missing Values in SQL

+ SQL uses NULL to represent a cell whose value was not specified.
+ Maps to NA in R.

+ Can check in SQL for NULL with `IS NULL`

```
SELECT * from orders WHERE date IS NULL;
```

---

# Functions in SQL

+ SQL provides a minimal but useful set of functions
+ 3 different types of functions 
   + records (one or more scalars from a single row)
   + aggregates (applies in GROUP BY operations on subsets of records)
   + triggers (when insert a record)

---
# Record Functions in SQL 

+ Use in the column selection for results
```
SELECT amount * 1.0925 as WithTaxAmount FROM orders;
SELECT ROUND(amount) FROM orders;

SELECT SUBSTR(last_name, 1, 5) FROM customer;
```

+ SQLite3 has very few builtin functions.  
  + There  are many extensions
  + We can define our own!!

---

# Aggregate Functions

+ Work on a a subset  (possibly all) of the recodes

+ COUNT, MIN, MAX, SUM, AVG - builtin

```
SELECT COUNT(*) FROM orders;
```

```
SELECT MIN(amount) AS MIN, MAX(amount) AS MAX FROM orders;
```


---
# Functions in SQL or R

(Back to whether to do in R or SQL)

+ What about scalar functions 
```
a = dbGetQuery(con, "SELECT log(x) FROM table;")
b = log(dbGetQuery(con, "SELECT x FROM table;")[[1]])
```

+ Not all functions in SQL
+ If R function is vectorized fast.
   + If not, perhaps faster in SQL
   
+ What about
```
a = dbGetQuery(con, "SELECT log(x) FROM table WHERE x > 0;")
```


---
# GROUP BY

+ Analogous to split(), tapply()/by()/aggregate() in R

+ We apply one or more functions to aggregate the subgroups

```
SELECT customer_id, SUM(amount) FROM orders GROUP BY customer_id;
```

+ Combine with `ORDER BY`
```
SELECT customer_id, SUM(amount) AS total FROM orders 
   GROUP BY customer_id
   ORDER BY total DESC;
```


---
# HAVING

+ How do we subset the results of a GROUP BY ?
  + Do it in R after getting the results
  
+ In the database before results are returned?
  + Use the `HAVING` clause on the result of the GROUP BY
  
```
SELECT customer_id, SUM(amount) AS total FROM  orders GROUP BY customer_id HAVING total > 100;
```
  

---

# SubQueries


---

# Views


---

#
