select FirstName,Occupation,EducationLevel, TotalChildren,sum(TotalChildren)
over(partition by Occupation order by EducationLevel) from expense.customers_data;