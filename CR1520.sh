#!/bin/sh
#Name: CR1520.sh
##############################


. ~/.bash_profile

sqlplus /nolog <<eof
conn / as sysdba
drop table sys.orders ; 
create table sys.orders ( orderno number (10) , customer varchar2(40) , location varchar2(20) ) ; 
insert into sys.orders values ( 10, 'JOHNSON', 'CA') ; 
insert into sys.orders values ( 20, 'KEVIN', 'LA') ; 
insert into sys.orders values ( 30, 'NIKE', 'SEATLE') ; 
insert into sys.orders values ( 40, 'TOM', 'NEWYORK') ; 
insert into sys.orders values ( 50, 'JIM', 'NEWJERSY') ; 
commit ; 
select * from sys.orders ; 
eof

echo "CR1520.sh Applied " 
exit 

