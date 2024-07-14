Use cs160_inclass;

SELECT s.Supplier_name, d.itemname
FROM store_suppliers s 
INNER JOIN store_delivery d ON s.Supplier_no = d.Supplier_no;

SELECT del.itemname, dep.deptname, dep.deptfloor
FROM store_delivery del
INNER JOIN store_departments dep ON del.deptname = dep.deptname;

SELECT s.Supplier_name, d.itemname
FROM store_suppliers s
INNER JOIN store_delivery d ON s.Supplier_no = d.Supplier_no
WHERE d.itemname LIKE '%Tent%';

SELECT del.itemname, dep.deptfloor
FROM store_delivery del
LEFT JOIN store_departments dep ON del.deptname = dep.deptname
ORDER BY dep.deptfloor, del.itemname;

SELECT e.empno, d.mgr_empno
FROM store_employees e
LEFT JOIN store_departments d ON e.deptname = d.deptname
ORDER BY e.empno;

SELECT dep.deptname, del.itemname, i.itemtype
FROM store_departments dep
JOIN store_delivery del ON dep.deptname = del.deptname
JOIN items_for_sale i ON del.itemname = i.itemname
WHERE i.itemtype = 'C';

SELECT AVG(e.empsalary), d.deptfloor
FROM store_employees e
INNER JOIN store_departments d ON e.deptname = d.deptname
WHERE d.deptfloor = 2;

SELECT SUM(s.saleqty), i.itemcolor
FROM store_sales s
INNER JOIN items_for_sale i ON s.itemname = i.itemname
WHERE i.itemcolor = 'Green';



