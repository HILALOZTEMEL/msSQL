-- Tablo Yaratma
use Lesson3
Go
create table Notlandirma3
(
Sehir nvarchar(40),
Not1 int,
)
select *from Notlandirma3

insert into Notlandirma3 values('Ankara',48)
insert into Notlandirma3 values('Ankara',84)
insert into Notlandirma3 values('Ankara',19)
insert into Notlandirma3 values('Ankara',93)
insert into Notlandirma3 values('Ankara',32)
insert into Notlandirma3 values('Ankara',99)
insert into Notlandirma3 values('Ankara',22)
insert into Notlandirma3 values('Ankara',12)
insert into Notlandirma3 values('Ankara',99)
insert into Notlandirma3 values('Ankara',32)
insert into Notlandirma3 values('istanbul',23)
insert into Notlandirma3 values('istanbul',32)
insert into Notlandirma3 values('istanbul',11)
insert into Notlandirma3 values('istanbul',73)
insert into Notlandirma3 values('istanbul',32)
insert into Notlandirma3 values('istanbul',12)
insert into Notlandirma3 values('istanbul',33)
insert into Notlandirma3 values('istanbul',88)
insert into Notlandirma3 values('izmir',34)
insert into Notlandirma3 values('izmir',77)
insert into Notlandirma3 values('izmir',38)
insert into Notlandirma3 values('izmir',36)
insert into Notlandirma3 values('izmir',68)
insert into Notlandirma3 values('izmir',23)
insert into Notlandirma3 values('izmir',98)
insert into Notlandirma3 values('izmir',12)
insert into Notlandirma3 values('izmir',99)
insert into Notlandirma3 values('izmir',12)
select *from Notlandirma3



select * from Notlandirma3
--order by ile sýralama yaparýz
order by Sehir,Not1  desc

--çeþitlendirme
select distinct Sehir from Notlandirma3

create table Ornek
(
Kolon1 int,
Kolon2 nvarchar(10)
)

insert into Ornek1 values (1,'c')
