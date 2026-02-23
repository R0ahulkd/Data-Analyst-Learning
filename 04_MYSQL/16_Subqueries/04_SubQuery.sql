Select * from employee_test.employee2;

select employee2.FirstName, employee2.Department from employee_test.employee2
where employee2.FirstName not in (select FirstName from employee_test.employee1);