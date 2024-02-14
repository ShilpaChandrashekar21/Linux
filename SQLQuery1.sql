create database sample1;
use sample1;

create table StudentPD(
rollNum int primary key, 
stName nvarchar(25) not null,
mobNum bigint unique
);

EXEC sp_help 'StudentPD';

Select * from StudentPD;
alter table StudentPd alter column
stName nvarchar(30) not null;

alter table StudentPD drop  column mobNum;

alter table StudentPD add 
mobNum bigint not null;

drop table StudentPD;
truncate table StudentPD; 



