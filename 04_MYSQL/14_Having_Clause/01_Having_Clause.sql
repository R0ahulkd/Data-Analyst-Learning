select * from employee_data.employee_sample_data;

select Department, count(EEID) from employee_data.employee_sample_data group by Department having count(EEID) > 150;