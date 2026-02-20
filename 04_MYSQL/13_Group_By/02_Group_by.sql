select * from employee_data.employee_sample_data;

select Gender, count(EEID) from employee_data.employee_sample_data group by Gender;