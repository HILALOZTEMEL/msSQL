Select * from Person.Address --istenilen datay� getirir

select City,PostalCode from Person.Address  --istenilen kolonlar� yazd�r�r

select PostalCode as CityCode,    --as ya da AS farketmez --kolon adlar�n� de�i�tirmede kullan�l�r
City AS [sehir] from Person.Address  --kal�c� olarak de�i�tirmez, �al���rken

--where verilerimi getirmek istedigim kriterlere g�re getirdigimde kulland�g�m yap�

select City,AddressID from Person.Address  --ayn� anda birden fazla kolonu �a��rmak

select *from Person.Address
where City='Ottawa' and AddressID='532' --ayn� anda istenilen iki �zellik



UPDATE Person.Address --update
SET City='ordu'
WHERE AddressID='2'

select * from Person.Address

select * from Person.Address 
where
StateProvinceID='14'
or  --and
City='Los Angeles'

select * from Person.Address
/*select * from Person.Person */

select AddressID,AddressLine1,AddressLine2,City from Person.Address

select *from Person.Address
where 
AddressID In
(1,
2,
3,
4,
5
)

select AddressID,PostalCode from Person.Address
where 
AddressID In
(1,
2,
3,
4,
5
)

--Filtreleme yapt�k
--% :Birden Fazla bilinmeyen karakteri temsil eder
--_:Sadece tek bir karakteri temsil eder
select City 
from Person.Address
where
City like '%a%'

select City 
from Person.Address
where
City not like '%a%'--i�inde a ge�enleri alma

select City
from Person.Address
where
City like 'L%'--ba��nda L olanlar

select City 
from Person.Address
where
City like '%a'--sonunda a olanlar

select City 
from Person.Address
where
City like '____e'--sonunda 4 harf sonra e olanlar

select *from Person.Address
where AddressID between 10 and 20 ;--addressid 10 and 20 aras�ndakiler gelecek

select City from Person.Address
where AddressID between 10 and 20 ;

--kolonun en b�y�k yada en k���k de�eri
select *From Person.Address
select MAX(AddressId) as EnYuksekDeger from Person.Address
select Min(AddressId) as EnDusukDeger from Person.Address