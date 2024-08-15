-- Chai ve Chang adl� �r�nlerden verilen sipari�leri bulunuz.
 -- ProductID 1,2
select * from [Order Details] 
where ProductID in (select ProductID from Products where ProductName = 'Chai' or ProductName = 'Chang')

select * from [Order Details]
where ProductID in (select ProductID from Products where ProductName = 'Tofu' or ProductName = 'Alice Mutton')

select * from [Order Details]
where ProductID in(select ProductID from Products where ProductName = 'Pavlova' or ProductName = 'Ikura')

select * from [Order Details]
where ProductID in(select ProductID from Products where ProductName = 'Konbu' or ProductName = 'Tarte au sucre')

-- ProductID si 11 olan �r�nden verilen sipari�leri listeyin
select * from Products

select * from Orders 
where OrderID in (select OrderID from [Order Details] where ProductID = 11)

-- order by
-- En fazla adette olu�turulan sipari�in detay�n� getiriniz.

select * from [Order Details] order by Quantity asc-- default s�ralamas�n� asceding yapar.
select top(1) OrderID from [Order Details] order by Quantity desc -- top komutu listelenen verilerin en �st�ndeki istedi�imiz say� kadar sat�r� listeler.

-- buldu�umuz sipari� detay�n�n sipari� tablosundaki bilgilerini getiriniz.
select * from Orders 
where OrderID in (select top(1) OrderID from [Order Details] order by Quantity desc)
-- buldu�umuz sipari� detay�n�n hangi �r�nden sipari� verildi�ini bulunuz.

select * from Products 
where ProductID in (select top(1) ProductID from [Order Details] order by Quantity desc)

-- Kargo �creti (Freight) en fazla olan 10 sipari�in OrderDate,Freight,ShipName ini getiriniz.

select top(10) OrderDate,Freight,ShipName from Orders order by Freight desc

-- �al��anlardan country si USA olmayanlar� getirin
select * from Employees where Country!='USA'
-- categorysi baverages olan �r�nlerin fiyatlar�n� b�y�kten k����e do�ru s�ralay�p getirin.
select * from Products 
where CategoryID in (select CategoryID from Categories where CategoryName = 'Beverages')
order by UnitPrice desc
-- sipari� detaylar�nda Quantity si 30 dan b�y�k olan sipari�lerin Unit pricelar�n� 
-- k���kten b�y��e do�ru s�ralay�p getirin.
select * from [Order Details] where Quantity > 30
order by UnitPrice

select * from Employees
select * from Orders
select * from [Order Details]
-- sipari�te herhangi bir indirim olmayan sipari�leri hangi �al��anlar�n ald���n� bulunuz.
 -- distinct tekrarl� ortadan kald�r�r.
select * from Employees 
where EmployeeID in (select distinct EmployeeID from Orders
where OrderID in (select distinct OrderID from [Order Details] where Discount = 0))