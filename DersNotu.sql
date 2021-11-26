--Tablo oluşturma
create table Personel
(
PersonelID int,
Isim nvarchar(40),
Soyisim nvarchar(40),
EmailAdres nvarchar(60)
)

-- Güncelleme Tabloya Kolon Ekleme
Alter table Personel
Add TelefonNumarasi nvarchar(12)

-- Güncelleme Tablo dan Kolon Silme
Alter table Personel
Drop column TelefonNumarasi

--Tabloya Veri Ekleme
--insert into Tabloadi(kolon1,kolon2,kolon3) values (deger1, deger2,deger3)
insert into Personel (PersonelID,Isim,Soyisim,EmailAdres) values(5,'Hilal','öztemel','hilaloztemel@gmail.com')

--Alternatif
insert into Personel values(3,'Osman','Bakkal','osmanbakkal@gmail.com')

--istenilen veriyi getirme
Select * from Person.Address
select City,PostalCode from Person.Address 

--WHERE KOŞULU KULLANIMI : 


--Tablodaki veriyi günceleme
update Personel
set
Soyisim='Boz',
Isim='Can'
where
PersonelID=3

--silme -- id si 2 olanlarý sil
delete Personel
where PersonelID=2

--Where verilerimi getirmek istedigim kriterlere göre getirdigimde kullandýgým yapý
select *from Person.Address
where City='Ottawa' and AddressID='532'

select * from Person.Address 
where
StateProvinceID='14'
or  --and
City='Los Angeles'

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


--AS KULLANIMI:

select PostalCode as CityCode,    --as ya da AS farketmez --kolon adlarini degistirmede kullanilir
City AS [sehir] from Person.Address  --kalici olarak degistirmez, çalisirken

--Filtreleme yaptik
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
City like 'L%'--basinda L olanlar

select City 
from Person.Address
where
City like '%a'--sonunda a olanlar

select City 
from Person.Address
where
City like '____e'--sonunda 4 harf sonra e olanlar


--BETWEEN KULLANIMI


select *from Person.Address
where AddressID between 10 and 20 ;--addressid 10 and 20 arasýndakiler gelecek

select City from Person.Address
where AddressID between 10 and 20 ;


--MAX VE MİN KULLANIMI
--kolonun en buyuk yada en kucuk degeri
select *From Person.Address
select MAX(AddressId) as EnYuksekDeger from Person.Address
select Min(AddressId) as EnDusukDeger from Person.Address

--COUNT
--
SELECT COUNT(column_name)
FROM table_name
WHERE condition; 

--AVG
-- sayisal bir sutunun ortalama degerini verir. 
SELECT AVG(column_name)
FROM table_name
WHERE condition;

--SUM
-- sayisal bir sutunun toplamini verir.
SELECT SUM(column_name)
FROM table_name
WHERE condition; 

select Sum(Point) from CityNamee
where City='izmir' --izmir in not toplamlarini yazar. --ürün toplami gibi

--ORDER BY KULLANIMI
--desc azalana göre(BUYUKTEN KUCUGE)
select * from Notlandirma3
--order by ile siralama yapariz
order by Sehir,Not1  desc

select top 10 *from CityNamee --üstten ilk 10 veri
order by City desc --sondan ilk 10



--DISTINC KULLANIMI
--çesitlendirme
select distinct Sehir from Notlandirma3 --notlandirma tablosundan sehirleri yazar

select * from CityNamee
select COUNT(DISTINCT City) from CityNamee  --kaç çesit veri var


--UNIQUE
--UNIQUE bir sutundaki tum degerlerin benzersiz olmasini saglar.
CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);



--PRIMARY KEY

--PRIMARY KEY Kısıt benzersiz bir tablodaki her kaydı tanımlamaktadır.
--"Kişiler" tablosu oluşturulduğunda "Kimlik" sütununda bir BİRİNCİL ANAHTAR oluşturur

create table Example2(
ID int primary key, --tekrar ayný sey girilmez
Isim nvarchar(20),
Soyisim nvarchar(20),
Yas int
)

--alternatif

CREATE TABLE Persons (
    ID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);


--NOT NULL
create table Ornek2
(
ID int not null, --zorunlu alan
Isim nvarchar(10)
)

insert into Ornek2(ID,Isim) values(1,'Can')
select * from Ornek2
insert into Ornek2(Isim) values ('can')--hata verir int girmek zorunlu

--UPPER
select UPPER(City) from CityNamee

--LOWER -LEN -DATALENGTH
select LOWER(City) from CityNamee

select City, LEN(City) as MetinselUzunluk from CityNamee --kalici olmayan sutun ekler

select City,LEN(City) as MetinselUzunluk,DATALENGTH(City) as byte from CityNamee --data da kapladigi alan

select Point,kolon from CityName

--INNER JOİN
--iki tablo kesisimi
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

--LEFT JOİN
--1. tablo ve 2. Tablo kesisimi
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;

--RIGHT JOİN
--2. tablo ve 1. Tablo kesisimi
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;

--FULL JOİN
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;


--CONCAT
select ReviewerName,EmailAddress,Comments+' '+ReviewerName+' '+EmailAddress as Concat1,
CONCAT (EmailAddress,' ',Comments) AS CONCAT2
from Production.ProductReview
where Rating ='5'  --is not  null da yazýlabilr


--Dafault
create table Persons
(
ID int not null,
LastName varchar(255) not null,
FirstName varchar(255),
Age int,
City varchar(255) default 'Ýstanbul'
)

insert into Persons(ID,Lastname,FirstName,Age,City) values (3,'Jon','Can V.',26,'Adana')
insert into Persons(ID,Lastname,FirstName,Age) values (3,'Jon','Can M.',26) --sehir girmeyince default olarak istanbul ekler


--LEFT -RİGHT
--Soldan 5 ve sagdan 5 harf yazdirma
select FirstName,LEFT(FirstName,5) as LEFTKullanim from Persons
select FirstName,RIGHT(FirstName,5) as RIGHTKullanim from Persons

--declare: yeni bir degisken olusturma islerinde declare komutu kullanalır

--genel yazým
--declare @degiskenAdi nvarchar(50):
--set @degiskenAdi='Can Boz'

declare @TamIsim nvarchar(30)
set @TamIsim='Can Boz'
print @TamIsim

declare @ToplamKayitSayisi int
select @ToplamKayitSayisi =count(*) from Table_1
print @ToplamKayitSayisi


declare @Personel table
(ID int,
Isim nvarchar(20),
Soyisim nvarchar(30)
)

-- FOREIGN key
create table MusteriIletisim(
ID int primary key,
Isim nvarchar(20),
Soyisim nvarchar(20)
)

create table MusteriIlet(
ID2 int,
Isim2 nvarchar(20),
Soyisim2 nvarchar(20)
FOREIGN KEY(ID2)REFERENCES MusteriIletisim(ID)

)

insert into MusteriIletisim(Isim,Soyisim) values ('zehra','kutukcu')

insert into MusteriIlet(Isim2,Soyisim2) values ('zehraa','kutukcuu')

select *from MusteriIletisim
select* from MusteriIlet
