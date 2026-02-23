select FirstName,Department from employee1
where FirstName not in (select FirstName from employee2);

#Returns data of employee 1 which not present in Employee 2