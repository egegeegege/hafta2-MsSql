-- Coalesce - Isnull - nullif

/* 
 E�er tablolar�m�zda "NULL" de�erler var ise ilerde bunlar sorun yaratabilir.
 �zellikle raporlamada s�k�nt� ��kabilir.
 E�er de�er olarak NULL bir ifade var ise onun yerine istedi�imiz de�eri yazd�rabiliriz.

*/
-- Coalesce
select CompanyName,coalesce(Region,'Tan�ms�z') as 'Region' from Customers

-- isnull

select CompanyName,isnull(Region,'Tan�ms�z') as 'Region' from Customers

-- nullif
-- E�er s�tunda bir kay�t, verdi�im de�ere e�it ise, onun yerine null yazar 
select avg(UnitsInStock) from Products
select avg(nullif(UnitsInStock,0)) from Products -- UnitsInStock 0 de�erinde ise NULL yapar.
-- avg de null de�erleri hesaplamad���ndan 0 olan de�erler i�in i�ine kat�lmaz.



