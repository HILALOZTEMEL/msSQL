--sorgu ile data base olu�turma
--create database lesson2
--drop database komutunu kullanarak olan database i siliyoruz
--drop database lesson2

-- Tablo Yaratma
use Lesson1
Go
create table Personel
(
PersonelID int,
Isim nvarchar(40),
Soyisim nvarchar(40),
EmailAdres nvarchar(60)
)
-- G�ncelleme Tablo Ekleme
Alter table Personel
Add TelefonNumarasi nvarchar(12)
-- G�ncelleme Tablo dan silme
Alter table Personel
Drop column TelefonNumarasi

--tabloya veri eklemek istiyorsam introyu kullan�r�m
--genel kullan�m
--insert into Tabloadi(kolon1,kolon2,kolon3) values (deger1, deger2,deger3)

insert into Personel (PersonelID,Isim,Soyisim,EmailAdres) values(5,'Hilal','�ztemel','hilaloztemel@gmail.com')

--Alternatif
insert into Personel values(3,'Osman','Bakkal','osmanbakkal@gmail.com')


--Update
--Genel Kullan�m
--update Tabloadi
--kolon1=Yenide�er
--kolon2=Yenide�er
--where

update Personel
set
Soyisim='Boz',
Isim='Can'
where
PersonelID=3

select * from Personel

--veri silme
--Genel Kullan�m  :
--delete Tablo Adi where kriter
update Personel
set
PersonelID=2,
EmailAdres=''


Select * From Personel
--silme -- id si 2 olanlar� sil
delete Personel
where PersonelID=2
