-- Like Operat�r�
select * from Customers where  ContactName = 'Maria Anders'
select * from Customers where  ContactName in('Maria Anders')
-- M��terilerden ismi m ile ba�layanlar� bulun.
select * from Customers where ContactName like 'm%'
-- M��terilerden ismi m ile bitenleri bulun.
select * from Customers where ContactName like '%m'
-- M��terilerden isminin i�erisinde sa ifadesi olanlar� bulun.
select * from Customers where ContactName like '%sa%'
-- M��terilerden ismi m ile ba�lay�p a ile bitenleri bulun.
select * from Customers where ContactName like 'm%a'
-- M��terilerden ismi a ile ba�lay�p sonras�nda bir karakter olup a ile devam edenleri bulum.
select * from Customers where ContactName like 'a_a%'

-- datetime ifadelerle kullan�labilir.
select * from Orders where OrderDate like '%1996%'

-- say�sal ifadelerle kullan�labilir.
select * from [Order Details] where Quantity like '%2%'



