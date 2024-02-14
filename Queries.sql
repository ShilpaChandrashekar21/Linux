create database UST;

use UST;

CREATE TABLE EMP(EMPNO INT NOT NULL,
        ENAME VARCHAR(10),
        JOB VARCHAR(9),
        MANAGER INT,
        HIREDATE DATE,
        SALARY BIGINT,
        COMMISSION INT,
        DEPTNO INT );

INSERT INTO EMP VALUES
        (7369, 'SMITH',  'CLERK',     7902,
        '17-DEC-1980',  800, NULL, 20);
INSERT INTO EMP VALUES
        (7499, 'ALLEN',  'SALESMAN',  7698,
        '20-FEB-1981', 1600,  300, 30);
INSERT INTO EMP VALUES
        (7521, 'WARD',   'SALESMAN',  7698,
        '22-FEB-1981', 1250,  500, 30);
INSERT INTO EMP VALUES
        (7566, 'JONES',  'MANAGER',   7839,
        '2-APR-1981',  2975, NULL, 20);
INSERT INTO EMP VALUES
        (7654, 'MARTIN', 'SALESMAN',  7698,
        '28-SEP-1981', 1250, 1400, 30);
INSERT INTO EMP VALUES
        (7698, 'BLAKE',  'MANAGER',   7839,
        '1-MAY-1981',  2850, NULL, 30);
INSERT INTO EMP VALUES
        (7782, 'CLARK',  'MANAGER',   7839,
        '9-JUN-1981',  2450, NULL, 10);
INSERT INTO EMP VALUES
        (7788, 'SCOTT',  'ANALYST',   7566,
       '09-DEC-1982', 3000, NULL, 20);
INSERT INTO EMP VALUES
        (7839, 'KING',   'PRESIDENT', NULL,
       '17-NOV-1981', 5000, NULL, 10);
INSERT INTO EMP VALUES
        (7844, 'TURNER', 'SALESMAN',  7698,
       '8-SEP-1981',  1500,    0, 30);
INSERT INTO EMP VALUES
        (7876, 'ADAMS',  'CLERK',     7788,
        '12-JAN-1983',  1100, NULL, 20);
INSERT INTO EMP VALUES
        (7900, 'JAMES',  'CLERK',     7698,
        '3-DEC-1981',  950, NULL, 30);
INSERT INTO EMP VALUES
        (7902, 'FORD',   'ANALYST',   7566,
       '3-DEC-1981',  3000, NULL, 20);
INSERT INTO EMP VALUES
        (7934, 'MILLER', 'CLERK',     7782,
       '23-JAN-1982',  1300, NULL, 10);

INSERT INTO EMP(EMPNO,ENAME,JOB, MANAGER,HIREDATE,SALARY,COMMISSION) VALUES
        (7934, 'MAXWELL', 'CLERK',     7782,
       '23-JAN-1982',  1300, NULL );

Select * from EMP;

select ename as "emp name" , job, HIREDATE as "joining date"
from EMP
where EMPNO = 7900;

select ename as "emp name" , job, HIREDATE as "joining date"
from EMP
where salary <= 7900;

select ename as "emp name" , job, HIREDATE as "joining date", SALARY
from EMP
where HIREDATE between '1980-12-17' and  '1981-12-17'

select *
from EMP
where DEPTNO in(10,20); --sub group

select *
from EMP
where DEPTNO not in(10,20);


select * 
from EMP
where ENAME like 'J%'; --starts with

select * 
from EMP
where ENAME like '%n';--ends with 

select * 
from EMP
where ENAME like 'm%n'

select * 
from EMP
where ENAME like 'm_____'; --no of character

select * 
from EMP
where ENAME like 'm%[er]' -- starts with m ends with er

select * 
from EMP
where ENAME like 'm%[e-r]' --starts with m but ends with character between e and r

select * 
from EMP
where ENAME like '^m%'; -- not in the range


select * 
from EMP
order by ENAME desc; --descending order

select * 
from EMP
order by ENAME ; --ascending order


select * 
from EMP
order by  HIREDATE ,ENAME;

select * 
from EMP
where DEPTNO  in(10,20)
order by  HIREDATE ,ENAME desc;


select ename as "emp name" , job , DEPTNO 
from EMP
group by DEPTNO, ENAME, job
order by DEPTNO ;

select ename as "emp name" , job , DEPTNO 
from EMP
group by DEPTNO, ENAME, job
having DEPTNO in (10,20)

select sum(SALARY) as total_salaray ,  DEPTNO 
from EMP
group by DEPTNO
having DEPTNO not in (10,20)

select avg(SALARY) as average_salaray ,  DEPTNO 
from EMP
group by DEPTNO

select count(EMPNO) as numofemp ,  DEPTNO 
from EMP
group by DEPTNO

--drop table dept;

create table dept(deptno int, dname nvarchar(5));

insert into dept values(10,'HR');
insert into dept values(20,'IT');
insert into dept values(30,'Sales');
insert into dept values(40,'NW');

select * from dept;

--inner join 
select emp.ename , dept.deptno, dept.dname
from EMP inner join dept
on EMP.DEPTNO = dept.deptno
group by dept.DEPTNO ,EMP.ENAME, dept.dname;

select e.ename , d.deptno, d.dname
from EMP e inner join dept d
on e.DEPTNO = d.deptno
group by d.DEPTNO ,E.ENAME, d.dname;

-- self join

select e.ename as "emp name", m.ename as "manager name"
from emp e, emp m
where e.MANAGER= m.EMPNO
group by m.ENAME, e.ENAME

--cross join
-- it will change all the values
select e.ename, d.dname, e.EMPNO, d.deptno
from emp e cross join dept d

--right outer join

select e.ename , d.deptno, d.dname 
from EMP e right outer join dept d
on e.DEPTNO = d.deptno

-- left outer join

select e.ename , d.deptno, d.dname 
from EMP e left outer join dept d
on e.DEPTNO = d.deptno

--full outer join
select e.ename , d.deptno, d.dname 
from EMP e full outer join dept d
on e.DEPTNO = d.deptno












