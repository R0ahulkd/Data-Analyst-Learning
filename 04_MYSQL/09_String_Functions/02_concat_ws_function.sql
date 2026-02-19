select * from employee_data.employee_sample_data;

select concat_ws("  -  ", Job_Title, Department, Gender) as Emp_details from employee_data.employee_sample_data;