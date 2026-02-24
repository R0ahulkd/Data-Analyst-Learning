select * from expense.customers_data;

select FirstName, Occupation, EducationLevel, sum(TotalChildren) from expense.customers_data
group by FirstName,Occupation,EducationLevel;

#Window Function

select FirstName,Occupation,EducationLevel, TotalChildren,sum(TotalChildren)
over(partition by Occupation) from expense.customers_data;