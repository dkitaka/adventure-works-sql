
use AdventureWorks2019

go

select BusinessEntityID,PersonType,NameStyle from person.Person

go
-- alias
select * from Person.Person t

select * from Person.Person as t

select FirstName,LastName from Person.Person 

select FirstName,LastName from Person.Person

select Person.FirstName,Person.LastName from Person.Person

select Person.FirstName as 'first',Person.LastName as 'last' from Person.Person

select t.FirstName as 'First',t.LastName as 'last' from Person.Person as t

------------------------------------------------------------
go

select 
	t.FirstName as 'First'
	,t.LastName as 'last' 
from Person.Person as t

go

-- top row :
select top 5 p.MiddleName,p.NameStyle from Person.Person as p

select top 1000 * from Person.Person as p

------------------------------------------------------------

-- Concat :

select t.FirstName as 'First',t.LastName as 'last' , t.FirstName+t.LastName as FullName from Person.Person as t

select t.FirstName as 'First',t.LastName as 'last' , t.FirstName+'   '+t.LastName+'5' as FullName from Person.Person as t
 
 -- Home --> Shift+End

 ------------------------------------------------------------

 
-- Distinct

select 
distinct e.JobTitle
from HumanResources.Employee as e

-- Ctrl+R

--   jobtitle , nationalID
--   a			11
--   a			11
--   b			12	
--   c			13

 ------------------------------------------------------------
 
 -- Where  condition

 select e.NationalIDNumber , e.JobTitle  , e.BirthDate , e.Gender
 from HumanResources.Employee as e
 where e.Gender = 'F' 

 select e.NationalIDNumber , e.JobTitle  , e.BirthDate , e.Gender
 from HumanResources.Employee as e
 where e.Gender = 'F' AND e.JobTitle = 'Application Specialist'
 
  select e.NationalIDNumber , e.JobTitle  , e.BirthDate , e.Gender
 from HumanResources.Employee as e
 where e.Gender = 'F' OR e.JobTitle = 'Application Specialist'
------------------------------------------------------------   
-- Between 

 select * 
 from person.StateProvince as s 
 where s.CountryRegionCode='us' and s.TerritoryID>2 and s.StateProvinceID >= 30 and s.StateProvinceID <=40
 
 select * 
 from person.StateProvince as s 
 where s.CountryRegionCode='us' and s.TerritoryID>2 and s.StateProvinceID between 30 and 40
 ------------------------------------------------------------

 -- Order  
  
  select * 
 from person.StateProvince as s 
 where s.CountryRegionCode='us' and s.TerritoryID>2
 Order by s.TerritoryID asc

   select * 
 from person.StateProvince as s 
 where s.CountryRegionCode='us' and s.TerritoryID>2
 Order by s.TerritoryID desc

 -- nested Order

SELECT *
  FROM Sales.SalesOrderDetail sd
  order by sd.ProductID asc,sd.UnitPrice asc

   ------------------------------------------------------------


 -- NULL :

 select * 
 from sales.SalesOrderDetail as sd
 where sd.CarrierTrackingNumber is null

 select * 
 from Person.Person as p
 where p.Title is null

 select * 
 from person.Person as p
 Where p.Title = 'Null'

    ------------------------------------------------------------

	-- LIKE :

	 select * 
 from person.Person as p
 where p.LastName like 'ra%'
 	 
	 select * 
 from person.Person as p
 where p.LastName like '%all'

	 select * 
 from person.Person as p
 where p.LastName like '%al%'
 ------------------------------------------------------------
 -- NOT LIKE :

 	 select * 
 from person.Person as p
 where p.LastName  not like N'ra%'
 ------------------------------------------------------------

 -- IN & NOT IN

select e.NationalIDNumber , e.JobTitle  , e.BirthDate , e.Gender
 from HumanResources.Employee as e
 where  e.JobTitle IN ( 'Application Specialist', 'Marketing Assistant' , 'Production Technician - WC10')

select e.NationalIDNumber , e.JobTitle  , e.BirthDate , e.Gender
 from HumanResources.Employee as e
 where  e.JobTitle NOT IN ( 'Application Specialist', 'Marketing Assistant' , 'Production Technician - WC10')
------------------------------------------------------------
 -- Len : 

 select * 
 from Production.Product as p
 where Len(p.Name) = 5