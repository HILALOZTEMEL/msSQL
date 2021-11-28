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