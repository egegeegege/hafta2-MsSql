-- Cast ve Convert i�lemleri
-- Tip d�n���mleri i�in kulland���m�z fonksiyonlard�r

-- E�er string i�indeki de�er say� ise her iki tarafta number varm�� gibi d���n�lerek toplama i�lemi yapar.
print 5 + '5'
print 5 + 5
-- e�er string i�inde say�sal ifade d���nda bir ifade varsa hata verir.
select 5 + '5a'
-- e�er her iki tarafta metinsel ifadeyse birle�tirme i�i yapar.
print '5' + '5'
print 'Sql ' + 'Dersleri'

-- Cast Kullan�m�
select cast('10' as int) + cast('20' as int)
select cast(10 as varchar) + '20'
select cast('2024-07-20' as Date)

select cast(ProductID as varchar)+'-'+ProductName from Products

-- convert kullan�m�
select convert(int,'10') + convert(int,'20')
select convert(varchar,10) + '20'
select convert(date,'2024-07-20')

select convert(varchar,ProductID)+'-'+ProductName from Products

-- convertte formatla i�lemide yap�labilir.

select convert(nvarchar,getdate(),101)
select convert(nvarchar,getdate(),102)
select convert(nvarchar,getdate(),111)




