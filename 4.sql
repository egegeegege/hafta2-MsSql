-- Sanal �simlendirme
select ProductName as '�r�n Ad�' from Products
select ProductName '�r�n Ad�' from Products
select ProductName as [�r�n Ad�] from Products
select ProductName [�r�n Ad�] from Products

-- Aggregate Functionlar
-- min() , max(), avg(), sum(), count()
-- �r�nler tablosunda en y�ksek fiyatl� �r�n� getir.
-- eski y�ntem
select top(1) UnitPrice from Products order by UnitPrice desc
-- max() methodu sat�lardan en y�ksek de�erli olan sat�r� getirir. metinsel ifadelerle �al���r.
select max(UnitPrice) as 'En y�ksek Fiyat' from Products
-- �r�nler tablosunda en d���k fiyatl� �r�n� getir.
-- min() methodu sat�lardan en d���k de�erli olan sat�r� getirir.  metinsel ifadelerle �al���r.
select min(UnitPrice) as 'En d���k Fiyat' from Products

-- count() => istenilen tablodaki sat�r say�s�n� getirir.  metinsel ifadelerle �al���r.
-- �r�nler tablomda ka� �r�n vard�r
select count(ProductID) as '�r�n Say�s�' from Products
-- ka� adet sipari� vard�r.
select count(OrderID) as 'Sipari� Say�s�' from Orders

-- NOT : count null olan kay�tlar� saymaz.
select count(Region) from Employees
select * from Employees
select count(EmployeeID) - count(Region) from Employees -- Null olan say�s�

-- ka� adet sipari� vard�r.
select count(OrderID) from Orders
select count(ShipRegion) from Orders
select * from Orders

-- sum() => sat�lar� alta alta k�m�latif (y���lmal�) olarak toplar.  metinsel ifadelerle �al��maz.
select sum(UnitPrice) as '�r�nlerin UnitPrice Toplam�' from Products

select sum(UnitPrice*Quantity) as 'T�m Sipari�lerin Toplam Fiyat�' from [Order Details]

-- avg() => average sat�rlar�n ortalamas�n� al�r. metinsel ifadelerle �al��maz.
select sum(UnitsInStock) / count(UnitsInStock)  from Products
select avg(UnitsInStock) from Products
select * from Products

select avg(Quantity) from [Order Details]

-- Anne isimli �al��an�n ald��� sipari�lerin toplam kargo maliyeti nedir.
select sum(Freight) from Orders 
where EmployeeID in (select EmployeeID from Employees where FirstName = 'Anne')

-- min,max datetime alanlarla �al���r.
-- en ya�l� �al��an
select min(BirthDate) from Employees
-- en gen� �al��an
select max(BirthDate) from Employees
-- t�m sipari�lerin ortalamas�
select avg(UnitPrice*Quantity) from [Order Details]

-- �al��anlar�n toplam sipari� say�s�n� bulunuz
select EmployeeID,count(OrderID) from Orders -- hata verir ��nk� employeeID tekrar eden bir yap� aggregate function ise tekil bir sonu� d�nd�ren bir yap�
-- GROUP BY
-- Aggregate functionlar d���nda select yap�lan s�tun yada s�tunlar var ise burada gelecek 
-- sat�rlardan birden fazla olaca��ndan dolay� tekrarl� s�tunu gruplamam�z gerekir.
select EmployeeID,count(OrderID) as '�al��an baz�nda toplam sipari�' 
from Orders group by EmployeeID

-- Hangi kategoride ka� adet �r�n vard�r.

select CategoryID, count(ProductID) from Products group by CategoryID

-- her personelin alm�� oldu�u sipari�lerin toplam kargo maliyeti
select EmployeeID, sum(Freight) from Orders group by EmployeeID
order by sum(Freight)

select EmployeeID, sum(Freight) from Orders group by EmployeeID
order by 1

select EmployeeID, sum(Freight) from Orders group by EmployeeID
order by 2

select EmployeeID, sum(Freight) as 'Kargo Maliyeti' from Orders group by EmployeeID
order by 'Kargo Maliyeti'

-- her bir sipari�in maliyetini OrderID ye g�re gruplay�n.
select OrderID, sum(UnitPrice*Quantity) from [Order Details] group by OrderID

-- her bir siparite ka� kalem sipari� verilmi�tir OrderID ye g�re gruplay�n.
select OrderID, count(OrderID) from [Order Details] group by OrderID
order by 2
-- sa�lamas�
select * from [Order Details] where OrderID in (11077)

-- �al��anlar�n ka� adet sipari� ald�klar�n� bulunuz fakat bunlardan 100 �st� sipari� alanlar� listeyiniz.

select EmployeeID,count(OrderID) from Orders group by EmployeeID
where count(OrderID) > 100 -- Hata verir.

-- NOT: e�er bir sorguda aggregate function ile ilgili bir ko�ul durumu var ise bu durumda
-- where kullan�lamaz !! bunun yerine having keyword� kullan�l�r.
select EmployeeID,count(OrderID) from Orders group by EmployeeID
having count(OrderID) > 100 

-- sipari� detaylar�nda t�m sipari�lerin toplam UnitPrice � 100 den b�y�k ise g�ster.
select sum(UnitPrice) from [Order Details] having sum(UnitPrice) >100






-- �dev 

-- Kategori baz�nda her kategoride olan �r�nlerin stoklar�n� yaz�n�z.
SELECT CategoryID, SUM([Order Details].Quantity) FROM Products, [Order Details] WHERE Products.ProductID = [Order Details].ProductID GROUP BY Products.CategoryID;
select * from [Order Details]

-- �r�n baz�nda tekrarlanan sipari� say�s�n�n ortalamas�n� bulunuz.
select ProductID, sum(UnitPrice*Quantity) from [Order Details] group by ProductID
SELECT ProductID, COUNT(*) AS Sipari�Say�s� FROM [Order Details] GROUP BY ProductID;


-- �r�n baz�nda quantity olarak en fazla sipari� verilen �r�n�n ad�n� bulunuz.
select * from Products 
where ProductID in (select top(1) ProductID from [Order Details] order by Quantity desc)




