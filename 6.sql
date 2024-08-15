-- Coalesce - Isnull - nullif

/* 
 Eðer tablolarýmýzda "NULL" deðerler var ise ilerde bunlar sorun yaratabilir.
 Özellikle raporlamada sýkýntý çýkabilir.
 Eðer deðer olarak NULL bir ifade var ise onun yerine istediðimiz deðeri yazdýrabiliriz.

*/
-- Coalesce
select CompanyName,coalesce(Region,'Tanýmsýz') as 'Region' from Customers

-- isnull

select CompanyName,isnull(Region,'Tanýmsýz') as 'Region' from Customers

-- nullif
-- Eðer sütunda bir kayýt, verdiðim deðere eþit ise, onun yerine null yazar 
select avg(UnitsInStock) from Products
select avg(nullif(UnitsInStock,0)) from Products -- UnitsInStock 0 deðerinde ise NULL yapar.
-- avg de null deðerleri hesaplamadýðýndan 0 olan deðerler iþin içine katýlmaz.



