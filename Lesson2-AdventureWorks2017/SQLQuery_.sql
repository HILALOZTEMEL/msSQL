Select * from Person.Address --istenilen datayý getirir

select City,PostalCode from Person.Address  --istenilen kolonlarý yazdýrýr

select PostalCode as CityCode,    --as ya da AS farketmez --kolon adlarýný deðiþtirmede kullanýlýr
City AS [sehir] from Person.Address  --kalýcý olarak deðiþtirmez, çalýþýrken

--where verilerimi getirmek istedigim kriterlere göre getirdigimde kullandýgým yapý

select City,AddressID from Person.Address  --ayný anda birden fazla kolonu çaðýrmak

select *from Person.Address
where City='Ottawa' and AddressID='532' --ayný anda istenilen iki özellik



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

--Filtreleme yaptýk
--% :Birden Fazla bilinmeyen karakteri temsil eder
--_:Sadece tek bir karakteri temsil eder
select City 
from Person.Address
where
City like '%a%'

select City 
from Person.Address
where
City not like '%a%'--içinde a geçenleri alma

select City
from Person.Address
where
City like 'L%'--baþýnda L olanlar

select City 
from Person.Address
where
City like '%a'--sonunda a olanlar

select City 
from Person.Address
where
City like '____e'--sonunda 4 harf sonra e olanlar

select *from Person.Address
where AddressID between 10 and 20 ;--addressid 10 and 20 arasýndakiler gelecek

select City from Person.Address
where AddressID between 10 and 20 ;

--kolonun en büyük yada en küçük deðeri
select *From Person.Address
select MAX(AddressId) as EnYuksekDeger from Person.Address
select Min(AddressId) as EnDusukDeger from Person.Address