o = read.table("orders.tsv", header = TRUE, sep = "\t")
c = read.table("customers.tsv", header = TRUE, sep = "\t")

vars = c("first_name", "last_name", "order_date", "amount")


#rownames(c) = as.character(c$customer_id)
#rownames(o) = as.character(o$customer_id)

# Inner join
#select first_name, last_name, order_date, amount
#from customers c
#inner join orders o
#on c.customer_id = o.customer_id

i = match(o$customer_id, c$customer_id, 0)
ans = cbind(o[i != 0,], c[i, ])




# Left join
#select first_name, last_name, order_date, amount
#from customers c
#left join orders o
#on c.customer_id = o.customer_id


w = c$customer_id %in% o$customer_id
i = match(o$customer_id, c$customer_id, 0)
a = cbind(c[i,],  o[ i != 0,])
a[, vars]
b = cbind(c[!w,], o[NA,][seq(length(sum(i == 0))), ])
b[,vars]
ans = rbind(a, b)


# Right join
i = match(o$customer_id, c$customer_id, 0)
a = cbind(o[i != 0,], c[i,])
b = cbind(o[i == 0,], c[NA,][seq(length(sum(i == 0))), ])
ans = rbind(a, b)
ans[, vars]





