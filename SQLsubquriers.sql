SELECT empno, ename, job, sal
FROM emp
WHERE sal > ANY
  (SELECT sal
  FROM emp
  WHERE job = 'CLERK' );
  
SELECT empno, ename, job, sal
FROM emp
WHERE sal > ANY
  (SELECT sal
  FROM emp
  WHERE job = 'CLERK' )
AND job <> 'CLERK';

SELECT ename, job, hiredate
FROM emp
WHERE hiredate < ALL
 (SELECT hiredate
  FROM emp
  WHERE job = 'MANAGER' );
  
  
SELECT ename, job, hiredate
FROM emp
WHERE hiredate < ANY
 (SELECT hiredate
  FROM emp
  WHERE job = 'MANAGER' );
  
  
  
SELECT empno, ename, sal,

-- Case statement: map conditions to values of the corresponding field
CASE
        WHEN sal >= 2000 THEN 'HIGH'
        WHEN sal BETWEEN 1000 AND 1999 THEN 'MEDIUM'
        ELSE 'LOW'
END

FROM emp;

SELECT empno, ename, sal,

-- Case statement: map conditions to values of the corresponding field
CASE
        WHEN sal >= 2000 THEN 'HIGH'
        WHEN sal BETWEEN 1000 AND 1999 THEN 'MEDIUM'
        ELSE 'LOW'
END as salary_level

FROM emp;

SELECT empno, ename, sal,
CASE
        WHEN sal >= 2000 THEN 'HIGH'
        WHEN sal BETWEEN 1000 AND 1999 THEN 'MEDIUM'
        ELSE 'LOW'
END as salary_level
FROM emp
-- Order by ordinal indexing in the SELECT clause
ORDER BY 4;

SELECT empno, ename, sal,
CASE
        WHEN sal >= 2000 THEN 'HIGH'
        WHEN sal BETWEEN 1000 AND 1999 THEN 'MEDIUM'
        ELSE 'LOW' END
FROM emp
ORDER BY CASE
        WHEN sal >= 2000 THEN 'HIGH'
        WHEN sal BETWEEN 1000 AND 1999 THEN 'MEDIUM'
        ELSE 'LOW' 
        END ASC;
		
SELECT empno, ename, sal,
CASE
        WHEN sal >= 2000 THEN 'HIGH'
        WHEN sal BETWEEN 1000 AND 1999 THEN 'MEDIUM'
        ELSE 'LOW'
END as salary_level
FROM emp
ORDER BY 4, 3 DESC;


SELECT 
AVG(CASE WHEN hiredate < '1981-12-31' THEN sal END) AS oldhiresal,
AVG(CASE WHEN hiredate > '1982-01-01' THEN sal END) AS newhiresal
FROM emp;


SELECT job,
AVG(CASE WHEN sal < 999 THEN 1 WHEN sal > 1000 THEN 0 END) AS pct_lt1000,
AVG(CASE WHEN sal < 999 THEN 0 WHEN sal > 1000 THEN 1 END) AS pct_gt1000
FROM emp
GROUP BY job;


-- Create temporary table title_sal
-- and then query from it
WITH title_sal AS 
(
        SELECT job, AVG(sal) AS avg_sal
        FROM emp
        GROUP BY job
)
SELECT * FROM title_sal;

-- Create temporary table title_sal
-- get only results where avg_sal > 1500
WITH title_sal AS 
(
        SELECT job, AVG(sal) AS avg_sal
        FROM emp
        GROUP BY job
)
SELECT * FROM title_sal
        WHERE avg_sal > 1500;
