--selects all data from emp table
select *
from emp;

--selects all data from dept table
select *
from dept;

--joins all matchind data from the emp and dept tables
SELECT * 
FROM emp INNER JOIN dept
ON emp.deptno = dept.deptno;

--pulls empno, ename, and emp.deptno,
SELECT empno, ename, deptno
FROM emp;

--joins empno, ename, emp.deptno, dnamefrom the emp and dept tables
SELECT empno, ename, emp.deptno, dname
FROM emp INNER JOIN dept
ON emp.deptno = dept.deptno;

-- joins all the data from the emp table to the matching data from dept
SELECT empno, ename, emp.deptno, dname
FROM emp LEFT OUTER JOIN dept
ON emp.deptno = dept.deptno;

-- joins all the data from the dept table to the matching data from emp
SELECT empno, ename, dept.deptno, dname
FROM dept LEFT OUTER JOIN emp
ON emp.deptno = dept.deptno;

-- joins all the data from the dept table to the matching data from emp
SELECT empno, ename, dept.deptno, dname
FROM emp RIGHT OUTER JOIN dept
ON emp.deptno = dept.deptno;

--joins all data from emp and dept tables
SELECT empno, ename, emp.deptno, dname
FROM emp FULL OUTER JOIN dept
ON emp.deptno = dept.deptno;

--joins emp dept and loc tables 
SELECT empno, ename, emp.deptno, dname, cty, state
FROM emp

LEFT OUTER JOIN dept
ON emp.deptno = dept.deptno

LEFT OUTER JOIN loc
ON dept.locno = loc.locno;

--UNION all three tables
SELECT deptno, dname, locno FROM dept
UNION
SELECT deptno, dname, locno FROM dept2;

SELECT * FROM dept
UNION
SELECT * FROM dept2;

--unions dept and dept2
SELECT deptno, dname FROM dept
UNION
SELECT deptno, dname FROM dept2;

SELECT locno FROM dept
UNION ALL
SELECT locno FROM dept2; 

SELECT locno FROM dept
UNION
SELECT locno FROM dept2