-- lastname i suyama olan �al��an�n ald��� sipari�lerin i�inden kargo maliyeti
-- en d���k olan 3 sipari�i listeleyin.

select top(3)* from Orders 
where EmployeeID in (select EmployeeID from Employees where LastName = 'Suyama')
order by Freight

-- Andrew adl� �al��an�n italy �lkesinden ald��� sipari�lerden kargo maliyeti 70'ten
-- k���k olanlar� listeyin.


select * from Orders 
where EmployeeID in(select EmployeeID from Employees where FirstName = 'Andrew')
and ShipCountry = 'Italy' and Freight<70
order by Freight

-- Aniseed Syrup adl� �r�nden verilen sipari�lerden sipari� fiyat� ve kargo maliyeti en
-- y�ksek olanlar� listeleyin

select top(1) UnitPrice * Quantity as 'En y�ksek fiyat' from [Order Details] 
where ProductID in (select ProductID from Products where ProductName in ('Aniseed Syrup'))
order by UnitPrice * Quantity desc

select top(1) * from Orders 
where OrderID in (select OrderID from [Order Details] 
where ProductID in (select ProductID from Products where ProductName in ('Aniseed Syrup')))
order by Freight desc

