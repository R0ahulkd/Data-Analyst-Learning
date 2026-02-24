select FirstName,Occupation,EducationLevel,TotalChildren, rank()
over (partition by Occupation order by EducationLevel) from customers_data;