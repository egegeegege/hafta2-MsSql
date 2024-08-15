-- lastname i suyama olan çalýþanýn aldýðý sipariþlerin içinden kargo maliyeti
-- en düþük olan 3 sipariþi listeleyin.

select top(3)* from Orders 
where EmployeeID in (select EmployeeID from Employees where LastName = 'Suyama')
order by Freight

-- Andrew adlý çalýþanýn italy ülkesinden aldýðý sipariþlerden kargo maliyeti 70'ten
-- küçük olanlarý listeyin.


select * from Orders 
where EmployeeID in(select EmployeeID from Employees where FirstName = 'Andrew')
and ShipCountry = 'Italy' and Freight<70
order by Freight

-- Aniseed Syrup adlý üründen verilen sipariþlerden sipariþ fiyatý ve kargo maliyeti en
-- yüksek olanlarý listeleyin

select top(1) UnitPrice * Quantity as 'En yüksek fiyat' from [Order Details] 
where ProductID in (select ProductID from Products where ProductName in ('Aniseed Syrup'))
order by UnitPrice * Quantity desc

select top(1) * from Orders 
where OrderID in (select OrderID from [Order Details] 
where ProductID in (select ProductID from Products where ProductName in ('Aniseed Syrup')))
order by Freight desc

