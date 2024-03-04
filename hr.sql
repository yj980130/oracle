
--[552페이지 문제 3] , 중복되는 것만 정렬시키는걸 어떻게 하는지 모르겠음.
SELECT 
    last_name || ' '|| first_name name
    ,salary
    ,job_id
    ,commission_pct
    
FROM employees
ORDER BY salary, commission_pct DESC;


--[553페이지 문제 1]

SELECT
  first_name  ||' '||  last_name || 'is a '|| job_id Employee_JOBs
FROM employees
WHERE LAST_NAME LIKE '%s';


--[554페이지 문제 2]
SELECT
     first_name  ||' '||  last_name name
     ,salary
     ,salary*12+salary*NVL(commission_pct,0) Annual_Salary
     ,NVL2(commission_pct,'Salary + Commission','Salary only') Commission
FROM employees
ORDER BY salary DESC;


--{554페이지 문제3]

Select
    case
    when to_char(hire_date, 'day')='일요일' then 1
    when to_char(hire_date, 'day')='월요일' then 2
    when to_char(hire_date, 'day')='화요일' then 3
    when to_char(hire_date, 'day')='수요일' then 4
    when to_char(hire_date, 'day')='목요일' then 5
    when to_char(hire_date, 'day')='금요일' then 6
     when to_char(hire_date, 'day')='토요일' then 7
    end odr
    
   , first_name  ||' '||  last_name name
    ,hire_date
    ,to_char(hire_date, 'day') Day_of_the_week
FROM employees
ORDER BY odr asc;


--[555페이지 문제 1]

--select distinct department_id
--
--from employees
--unionall

SELECT 
    department_id
    ,to_char(sum(salary),'$999,999.00') sum_salary
    ,to_char(avg(salary), '$999,999.00') avg_salary
    ,to_char(max(salary),'$999,999.00') max_salary
    ,to_char(min(salary),'$999,999.00') min_salary
FROM employees
group by department_id
ORDER BY department_id asc;

--[556페이지 문제 2 ], avg 같은 그룹 함수 사용시 조건식을 having 절에 작성해야한다.
SELECT
    job_id
    ,avg(salary)
  
FROM employees
GROUP BY job_id
HAVING Avg(salary)>=10000
ORDER BY AVG(salary) DESC;

--[558페이지 문제 1)
SELECT 
    d.department_name
    ,count( e.employee_id )
   
    
FROM employees e JOIN departments d ON e.department_id = d.department_id

group by d.department_name
having count( e.employee_id ) >=5
ORDER BY count( e.employee_id ) DESC;


--[558페이지 문제 2]  -> 같은 사람 계속 나오는 문제 해결 못했음 분명 수업시간에 들었는데 기억이 안남...

CREATE TABLE Job_Grades(
grade_level VARCHAR2(3),lowest_sal NUMBER, highest_sal NUMBER);

INSERT INTO Job_Grades VALUES('A', 1000,2999);
INSERT INTO Job_Grades VALUES('B', 3000,5999);
INSERT INTO Job_Grades VALUES('C', 6000,9999);
INSERT INTO Job_Grades \
SELECT 
     first_name  ||' '||  last_name name
    ,job_id
    ,department_name
    ,hire_date
    ,salary
    ,grade_level
FROM   employees e ,job_Grades g,departments d

where e.salary between g.lowest_sal and g.highest_sal



