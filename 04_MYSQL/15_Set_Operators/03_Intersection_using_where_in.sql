Select * from employee_test.employee1;
select * from employee_test.employee2;

select FirstName,Department from employee1
where FirstName in (select FirstName from employee2);