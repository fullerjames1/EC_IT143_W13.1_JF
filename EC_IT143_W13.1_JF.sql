Select pa.*
From person.address As pa
Where pa.city ='Bothell';


Use [AdventureWorks2019]
Go
Create Nonclustered Index IX_my_index
on [person].[address]([city])

Go

select pa. *
from person.address AS pa
where pa.city ='Bothell';


use [AdventureWorks2019]
-- change the '=' to 'Like'
Select pa.*
From Person.Address AS pa
where pa.City Like 'bothell';

--Q: If you were to look up someone at Walmart directory and wanted to call them,
--how can we do it?
--A: Run the first and last name and phone number from SQL.


USE AdventureWorks2019

SELECT FirstName, LastName, PersonType, BusinessEntityID
FROM Person.Person
WHERE PersonType = 'EM '

SELECT PhoneNumber
FROM Person.PersonPhone
WHERE PhoneNumberTypeID = 3





Begin Transaction
Select *
From EC_IT143_DA.[dbo].[Walmart]
Where Store  = 2



--Q: From a key stakeholder at the walmart stores,  who is overseeing the sales count for 
--the year: "I want to know which walmart has the highest amount of revenue"
--A:Ask SQL

select Weekly_Sales
from EC_IT143_DA.[dbo].[Walmart]
Where Weekly_Sales > = 3600000

--Q: What's the maxium weekly Sales that Walmart made?
--A: Ask SQL

select Weekly_Sales, Store
from EC_IT143_DA.[dbo].[Walmart]
Where Weekly_Sales > = 1

Select MAX (Weekly_Sales)
From EC_IT143_DA.dbo.Walmart



--Q: Temperature? What is walmart using temperature for in this database?
--A: I'm not sure why.

Go
Select Temperature
From dbo.Walmart

End


Select Temperature
From dbo.Walmart
Where temperature > 40;







Select EC_IT143_DA.dbo.Temperature

  MIN(temperature) AS min_temperature,
  MAX(temperature) AS max_temperature
  Group by category
Having Min(temperature)>40;




 
