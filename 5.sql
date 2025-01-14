-- Like Operatörü
select * from Customers where  ContactName = 'Maria Anders'
select * from Customers where  ContactName in('Maria Anders')
-- Müşterilerden ismi m ile başlayanları bulun.
select * from Customers where ContactName like 'm%'
-- Müşterilerden ismi m ile bitenleri bulun.
select * from Customers where ContactName like '%m'
-- Müşterilerden isminin içerisinde sa ifadesi olanları bulun.
select * from Customers where ContactName like '%sa%'
-- Müşterilerden ismi m ile başlayıp a ile bitenleri bulun.
select * from Customers where ContactName like 'm%a'
-- Müşterilerden ismi a ile başlayıp sonrasında bir karakter olup a ile devam edenleri bulum.
select * from Customers where ContactName like 'a_a%'

-- datetime ifadelerle kullanılabilir.
select * from Orders where OrderDate like '%1996%'

-- sayısal ifadelerle kullanılabilir.
select * from [Order Details] where Quantity like '%2%'



