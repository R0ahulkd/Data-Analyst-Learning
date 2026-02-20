SELECT * FROM employee_data.employee_sample_data;

select Full_Name, Job_Title, Age,
case
	when Age < 30 then "Young worker"
    else "Worker"
end as "Worker"
from employee_data.employee_sample_data;