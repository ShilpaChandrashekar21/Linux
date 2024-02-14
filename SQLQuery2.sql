use sample1;

insert into StudentPd values (101,'AAA', 9876543210);
insert into StudentPD values (102,'BBB', 7696543210);
insert into StudentPD values (103,'CCC', 7696543230);
insert into StudentPD values (104,'DDD', 7696543310);
insert into StudentPD (rollNum,stName) values (105,'DDD');
insert into StudentPD (stName,rollNum) values ('EEE',106); 
insert into StudentPD (rollNum,stName) values (107,'GGG');



select * from StudentPD;

update StudentPD set mobNum = 7654321987 where rollNum = 104;
update StudentPD set mobNum = 7654321987 where rollNum > 104;

update StudentPD set stName = 'EEE 'where rollNum = 105;
update StudentPD set stName = 'FFF 'where rollNum = 106;

delete StudentPD where rollNum = 106;
delete StudentPD where mobNum is null;





