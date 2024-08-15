-- Chai ve Chang adlý ürünlerden verilen sipariþleri bulunuz.
 -- ProductID 1,2
select * from [Order Details] 
where ProductID in (select ProductID from Products where ProductName = 'Chai' or ProductName = 'Chang')

select * from [Order Details]
where ProductID in (select ProductID from Products where ProductName = 'Tofu' or ProductName = 'Alice Mutton')

select * from [Order Details]
where ProductID in(select ProductID from Products where ProductName = 'Pavlova' or ProductName = 'Ikura')

select * from [Order Details]
where ProductID in(select ProductID from Products where ProductName = 'Konbu' or ProductName = 'Tarte au sucre')

-- ProductID si 11 olan üründen verilen sipariþleri listeyin
select * from Products

select * from Orders 
where OrderID in (select OrderID from [Order Details] where ProductID = 11)

-- order by
-- En fazla adette oluþturulan sipariþin detayýný getiriniz.

select * from [Order Details] order by Quantity asc-- default sýralamasýný asceding yapar.
select top(1) OrderID from [Order Details] order by Quantity desc -- top komutu listelenen verilerin en üstündeki istediðimiz sayý kadar satýrý listeler.

-- bulduðumuz sipariþ detayýnýn sipariþ tablosundaki bilgilerini getiriniz.
select * from Orders 
where OrderID in (select top(1) OrderID from [Order Details] order by Quantity desc)
-- bulduðumuz sipariþ detayýnýn hangi üründen sipariþ verildiðini bulunuz.

select * from Products 
where ProductID in (select top(1) ProductID from [Order Details] order by Quantity desc)

-- Kargo ücreti (Freight) en fazla olan 10 sipariþin OrderDate,Freight,ShipName ini getiriniz.

select top(10) OrderDate,Freight,ShipName from Orders order by Freight desc

-- çalýþanlardan country si USA olmayanlarý getirin
select * from Employees where Country!='USA'
-- categorysi baverages olan ürünlerin fiyatlarýný büyükten küçüðe doðru sýralayýp getirin.
select * from Products 
where CategoryID in (select CategoryID from Categories where CategoryName = 'Beverages')
order by UnitPrice desc
-- sipariþ detaylarýnda Quantity si 30 dan büyük olan sipariþlerin Unit pricelarýný 
-- küçükten büyüðe doðru sýralayýp getirin.
select * from [Order Details] where Quantity > 30
order by UnitPrice

select * from Employees
select * from Orders
select * from [Order Details]
-- sipariþte herhangi bir indirim olmayan sipariþleri hangi çalýþanlarýn aldýðýný bulunuz.
 -- distinct tekrarlý ortadan kaldýrýr.
select * from Employees 
where EmployeeID in (select distinct EmployeeID from Orders
where OrderID in (select distinct OrderID from [Order Details] where Discount = 0))