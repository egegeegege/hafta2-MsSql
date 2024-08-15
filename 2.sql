-- Cast ve Convert iþlemleri
-- Tip dönüþümleri için kullandýðýmýz fonksiyonlardýr

-- Eðer string içindeki deðer sayý ise her iki tarafta number varmýþ gibi düþünülerek toplama iþlemi yapar.
print 5 + '5'
print 5 + 5
-- eðer string içinde sayýsal ifade dýþýnda bir ifade varsa hata verir.
select 5 + '5a'
-- eðer her iki tarafta metinsel ifadeyse birleþtirme iþi yapar.
print '5' + '5'
print 'Sql ' + 'Dersleri'

-- Cast Kullanýmý
select cast('10' as int) + cast('20' as int)
select cast(10 as varchar) + '20'
select cast('2024-07-20' as Date)

select cast(ProductID as varchar)+'-'+ProductName from Products

-- convert kullanýmý
select convert(int,'10') + convert(int,'20')
select convert(varchar,10) + '20'
select convert(date,'2024-07-20')

select convert(varchar,ProductID)+'-'+ProductName from Products

-- convertte formatla iþlemide yapýlabilir.

select convert(nvarchar,getdate(),101)
select convert(nvarchar,getdate(),102)
select convert(nvarchar,getdate(),111)




