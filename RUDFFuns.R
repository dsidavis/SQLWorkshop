library(RSQLite)
library(RSQLiteUDF)
db = dbConnect(SQLite(), "~/DSI/Workshops/SQL/DataEG/PresidentOrders/co")
sqliteExtension(db)


ptr = getNativeSymbolInfo("myfloorFunc")$address
createSQLFunction(db, ptr, "myfloor", nargs = 1L)
d = dbGetQuery(db, "SELECT amount, myfloor(amount) FROM orders")


fibptr = getNativeSymbolInfo("sqlFib2")$address
createSQLFunction(db, fibptr, "fib", nargs = 1L)
d = dbGetQuery(db, "SELECT order_id, fib(order_id) FROM orders")

# R function
createSQLFunction(db, function(x) grepl("^0[45]/", x), "aprilMay", nargs = -1L)
d = dbGetQuery(db, "SELECT * FROM orders WHERE aprilMay(order_date)")

