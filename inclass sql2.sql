Use cs160_inclass;

SELECT COUNT(DISTINCT(deptname)) total_departments
FROM store_departments;

SELECT MAX(saleqty) largest_order
FROM store_sales;

SELECT MIN(empsalary) lowest_salary
FROM store_employees;

SELECT SUM(saleqty) total_items
FROM store_sales;

SELECT AVG(Delivery_qty) average_delivery_qty
FROM store_delivery;

SELECT COUNT(empno) employee_salary
FROM store_employees
WHERE empsalary BETWEEN 10000 AND 20000;

SELECT AVG(Delivery_qty) avg_delivery_qty
FROM store_delivery
WHERE deptname = "Books";

SELECT SUM(Delivery_qty) sum_delivery_qty
FROM store_delivery
WHERE deptname = "Books";

SELECT COUNT(Delivery_no) deliveries_to_books
FROM store_delivery
WHERE deptname = "Books";

SELECT SUM(Delivery_qty) / COUNT(Delivery_no)
FROM store_delivery
WHERE deptname = "Books";

SELECT MAX(Delivery_qty) - MIN(Delivery_qty)
FROM store_delivery
WHERE deptname = "Books";

SELECT DISTINCT(itemname)
FROM store_delivery
WHERE Delivery_qty BETWEEN 1 AND 3;

SELECT itemtype
FROM items_for_sale
WHERE LENGTH(itemtype) >=2;

SELECT itemname, itemtype, itemcolor
FROM items_for_sale
WHERE (itemtype = 'C' AND itemcolor = 'Khaki')
OR (itemtype = 'C' AND itemcolor = 'Green')
OR itemcolor = 'Brown';