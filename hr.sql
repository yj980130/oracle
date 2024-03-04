
--[552������ ���� 3] , �ߺ��Ǵ� �͸� ���Ľ�Ű�°� ��� �ϴ��� �𸣰���.
SELECT 
    last_name || ' '|| first_name name
    ,salary
    ,job_id
    ,commission_pct
    
FROM employees
ORDER BY salary, commission_pct DESC;


--[553������ ���� 1]

SELECT
  first_name  ||' '||  last_name || 'is a '|| job_id Employee_JOBs
FROM employees
WHERE LAST_NAME LIKE '%s';


--[554������ ���� 2]
SELECT
     first_name  ||' '||  last_name name
     ,salary
     ,salary*12+salary*NVL(commission_pct,0) Annual_Salary
     ,NVL2(commission_pct,'Salary + Commission','Salary only') Commission
FROM employees
ORDER BY salary DESC;


--{554������ ����3]

Select
    case
    when to_char(hire_date, 'day')='�Ͽ���' then 1
    when to_char(hire_date, 'day')='������' then 2
    when to_char(hire_date, 'day')='ȭ����' then 3
    when to_char(hire_date, 'day')='������' then 4
    when to_char(hire_date, 'day')='�����' then 5
    when to_char(hire_date, 'day')='�ݿ���' then 6
     when to_char(hire_date, 'day')='�����' then 7
    end odr
    
   , first_name  ||' '||  last_name name
    ,hire_date
    ,to_char(hire_date, 'day') Day_of_the_week
FROM employees
ORDER BY odr asc;


--[555������ ���� 1]

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

--[556������ ���� 2 ], avg ���� �׷� �Լ� ���� ���ǽ��� having ���� �ۼ��ؾ��Ѵ�.
SELECT
    job_id
    ,avg(salary)
  
FROM employees
GROUP BY job_id
HAVING Avg(salary)>=10000
ORDER BY AVG(salary) DESC;

--[558������ ���� 1)
SELECT 
    d.department_name
    ,count( e.employee_id )
   
    
FROM employees e JOIN departments d ON e.department_id = d.department_id

group by d.department_name
having count( e.employee_id ) >=5
ORDER BY count( e.employee_id ) DESC;


--[558������ ���� 2]  -> ���� ��� ��� ������ ���� �ذ� ������ �и� �����ð��� ����µ� ����� �ȳ�...

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



