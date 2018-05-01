N = 500e6
ages = as.integer(unlist(sapply(rnorm(4, 50, 20), function(lambda) rpois(N/4, lambda))))
ans = data.frame(id = sample(2*N, N),
                 age = ages,
                 sex = sample(c("M", "F"), N, replace = TRUE))

write.table(ans, file = "data.csv", col.names = FALSE, row.names = FALSE, sep = ",")


# d = read.csv("data.csv", colClasses = c("integer", "integer", "character"), header = FALSE)


