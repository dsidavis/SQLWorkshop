library(RSQLite)

con = dbConnect(SQLite(), "students")

tblNames = dbListTables(con)

vars = dbListFields(con, tblNames[1])


vals = dbReadTable(con, "students")
sapply(vals, class)


d1 = dbGetQuery(con, "SELECT * FROM students WHERE stage = 'D1'")

d1.stat = dbGetQuery(con, "SELECT * FROM students WHERE stage = 'D1' AND program = 'Statistics'")



rs = dbSendQuery(con, "SELECT * FROM students WHERE stage = 'D1'")

fetch(rs, 1)
dbColumnInfo(rs)

dbClearResult(rs)
rs = dbSendQuery(con, "SELECT * FROM students WHERE stage = 'D1'")

while(nrow(tmp = fetch(rs, 1))) {
  # process tmp
  print(tmp)
}





