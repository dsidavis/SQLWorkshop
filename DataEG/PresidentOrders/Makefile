
co: read.sql mk.sql customers.tsv orders.tsv
	sqlite3 $@ < mk.sql
	sqlite3 $@ < read.sql
