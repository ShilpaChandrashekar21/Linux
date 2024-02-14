create database assignment;
use assignment;

create table Customers (CustomerId int,
Cust_Name varchar(20),
Address1 Varchar(30),
Address2  Varchar(30));


alter table Customers
alter column Cust_Name varchar(30) not null;

alter table Customers
add Gender  Varchar(1),
Age  int,
PhoneNo bigint;

alter table Customers
alter column Gender varchar(30)

insert into Customers values(1000, 'Allen', '#115 Chicago','#115 Chicago','M', 25, 7878776)
insert into Customers values(1001, 'George', '#116 France', '#116 France', 'M', 25, 434524)
insert into Customers values(1002, 'Becker', '#114 New York','#114 New York','M', 45, 431525)

select * from Customers


