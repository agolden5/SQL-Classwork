Use cs160_inclass;

select DISTINCT(deptfloor)
FROM store_departments
ORDER BY deptfloor;

SELECT deptname, mgr_empno
FROM store_departments
WHERE deptfloor = '2';

SELECT empname
FROM store_employees
WHERE empname LIKE '%S%';

SELECT COUNT(itemname)
FROM store_sales
WHERE deptname = "Books";

SELECT d.deptfloor, d.deptname, s.itemname
FROM store_departments d
INNER JOIN store_sales s ON d.deptname = s.deptname
WHERE s.itemname = "Sextant";

SELECT SUM(Delivery_qty), deptname 
FROM store_delivery
WHERE deptname = "Books";

SELECT SUM(saleqty)
FROM store_sales
WHERE deptname = "Books";

SELECT *
FROM store_sales
WHERE deptname = "Books";

SELECT COUNT(saleno)
FROM store_sales
WHERE deptname = "Books";