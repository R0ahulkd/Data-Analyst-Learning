SELECT * FROM employee_data.employee_sample_data;

select Full_Name, Job_Title, Age,
case
	when Age <= 30 then "Young worker"
    when Age <= 40 then "Middle Age"
    when Age <= 50 then "Experienced"
    else "Old Age Worker"
end as "Worker"
from employee_data.employee_sample_data;