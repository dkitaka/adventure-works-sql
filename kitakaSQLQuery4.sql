
use AdventureWorks2019

go

select BusinessEntityID,PersonType,NameStyle from person.Person

go

 select * 
 from person.Person as p
 where p.LastName like 'ra%'
 	 
	 select * 
 from person.Person as p
 where p.LastName like '%all'

	 select * 
 from person.Person as p
 where p.LastName like '%al%'

 
  select * 
 from person.StateProvince as s 
 where s.CountryRegionCode='us' and s.TerritoryID>2
 Order by s.TerritoryID asc

   select * 
 from person.StateProvince as s 
 where s.CountryRegionCode='us' and s.TerritoryID>2
 Order by s.TerritoryID desc