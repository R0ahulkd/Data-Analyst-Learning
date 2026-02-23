select FirstName,Department from employee1
except
select FirstName,Department from employee2;

#Returns data of employee 1 which not present in Employee 2