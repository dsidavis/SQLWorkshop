
%_nh.tsv: %.tsv Makefile
	tail -n +2 $< > $@

co: read.sql mk.sql  customers_nh.tsv orders_nh.tsv
	sqlite3 $@ < mk.sql
	sqlite3 $@ < read.sql
