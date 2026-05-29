-- select * from employee;
-- select emp_name, birthday, sal from employee;
-- select emp_name as è]ã∆àıñº, birthday as ê∂îNåéì˙, sal as ããó^, cast(sal * 12 as Int) as îNé˚ from employee;
-- select emp_name as è]ã∆àıñº, birthday as ê∂îNåéì˙, ((sal * 2) :: int) as ããó^, ((sal * 12) :: Int) as îNé˚ from employee;
-- select 'íSìñé“ ' || emp_name || ' ÇÃíaê∂ì˙ÇÕ ' || birthday || ' Ç≈Ç∑' from employee;
-- select emp_name, to_char(birthday, 'Day, Month, DD, YYYY') from employee;
-- select emp_name, to_char(sal, '9G999G999D99') from employee;
-- select emp_name, birthday, sal, comm, sal + coalesce(comm, 0) from employee;

-- select emp_name,
--     case
--         when gender = 1 then 'íjê´'
--                         else 'èóê´'
--     end    
-- from employee;

-- select emp_name,
--     case gender
--         when 1 then '1ÇÕíjê´'
--                else '2ÇÕèóê´'
--     end    
-- from employee;

-- select emp_name, birthday, sal, comm
--     , sal + 
--     case
--         when comm is null then 0
--                           else comm
--     end
-- from employee;

-- select * from employee order by gender, sal;

-- select emp_name,
--        birthday,
--        sal,
--        comm,
--        sal + 
--             case
--                 when comm is null then 0
--                                   else comm
--             end as åéé˚
-- from employee
-- order by 5 desc;

-- select emp_name,
--        birthday,
--        sal,
--        comm,
--        sal + 
--             case
--                 when comm is null then 0
--                                   else comm
--             end as åéé˚
-- from employee
-- order by 2 desc;

-- select *
-- from employee
-- order by sal desc
-- limit 3 offset 1;

-- é¿èK1
-- select * from product;

-- é¿èK2
-- select prod_name, cost, discount from product;

-- é¿èK3
-- select prod_name, cost, discount, cost * discount as äÑà¯âøäi from product;

-- é¿èK4
-- select prod_name, cost, discount, cost * coalesce(discount, 1) as äÑà¯âøäi from product;

-- é¿èK5
-- select prod_name, cost, discount, to_char(cost * coalesce(discount, 1), '9g999g999d99') as äÑà¯âøäi from product;

-- select
--     emp_name,
--     sal
-- from employee
-- where sal >= 2000; --sal > 2000 or sal = 2000; --íäèoèåèÅI

-- select
--     emp_name,
--     sal,
--     gender
-- from employee
-- where gender = 2
-- ;

-- select 
--     emp_name,
--     sal,
--     birthday
-- from employee
-- where birthday >= '1980-01-01'
-- ;

-- select
--     emp_name,
--     sal
-- from employee
-- where sal between 2000 and 3000 -- ìôçÜÇä‹ÇÒÇæîÕàÕÇ…Ç»ÇÈ
--     -- sal >= 2000 and sal <= 3000
--     -- between sal 2000 and 3000
-- ;

-- select
--     emp_name,
--     sal
--     emp_id
-- from employee
-- where emp_id in (2, 4, 7)
-- ;

-- select
--     emp_name,
--     sal,
--     gender
-- from employee
-- where sal >= 2000 or gender = 2
-- ;

-- select 
--     emp_name,
--     sal
--     gender
-- from employee
-- where 
--     (sal >= 2000 and sal <= 3000) or gender = 2
-- ;

-- select
--     emp_name,
--     sal
-- from employee
-- where sal not between 1000 and 5000
-- ;

-- select * from customer
-- where address like '%ëÂç„és%'
-- ;

-- select * from customer
-- where address not like 'ìåãûìs%'
-- ;

-- select cust_id, cust_name from customer 
-- -- where cust_name like '_ìc%' and cust_name like '%éq';
-- where cust_name like '_ìc%éq';

-- select * from employee
-- where comm is not null;

-- --é¿èK1
-- select prod_id, prod_name, model_no, cost, discount from product where cost >= 20000;

-- é¿èK2
-- select cust_id, cust_name, fax from customer where fax is null;

-- é¿èK6
-- select cust_id, cust_name, tel from customer where tel not like '03%' and tel not like '06%';

-- é¿èK3
-- select sales_no, psales_no, prod_id, price from sales where 109 < psales_no and psales_no < 120 order by price desc;

-- select
--     count(*), -- èWåv
--     sum(sal) -- èWåvÅFÇ†ÇÈèWícÇê›íËÇ∑ÇÈïKóvÇ™Ç†ÇÈ
-- from employee;

-- select
--     count(*) - count(comm)
-- from employee;

-- select
--     dept_id,
--     count(*),
--     sum(sal),
--     avg(sal),
--     min(sal),
--     max(sal)
-- from employee
-- group by dept_id
-- order by dept_id
-- ;

-- select
--     gender, 
--     count(*)
-- from employee
-- group by gender
-- order by gender
-- ;

-- select
--     dept_id,
--     gender,
--     count(*),
--     avg(sal)
-- from employee
-- group by dept_id, gender
-- order by dept_id, gender
-- ;

select
    dept_id,
    sum(sal),
    avg(sal),
    min(sal),
    max(sal)
from employee
group by dept_id
    having sum(sal) <= 5000
order by dept_id
;