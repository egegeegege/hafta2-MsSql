-- Like Operatörü
select * from Customers where  ContactName = 'Maria Anders'
select * from Customers where  ContactName in('Maria Anders')
-- Müþterilerden ismi m ile baþlayanlarý bulun.
select * from Customers where ContactName like 'm%'
-- Müþterilerden ismi m ile bitenleri bulun.
select * from Customers where ContactName like '%m'
-- Müþterilerden isminin içerisinde sa ifadesi olanlarý bulun.
select * from Customers where ContactName like '%sa%'
-- Müþterilerden ismi m ile baþlayýp a ile bitenleri bulun.
select * from Customers where ContactName like 'm%a'
-- Müþterilerden ismi a ile baþlayýp sonrasýnda bir karakter olup a ile devam edenleri bulum.
select * from Customers where ContactName like 'a_a%'

-- datetime ifadelerle kullanýlabilir.
select * from Orders where OrderDate like '%1996%'

-- sayýsal ifadelerle kullanýlabilir.
select * from [Order Details] where Quantity like '%2%'



