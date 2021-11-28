create table lesson1
(
ID int Unique,
Isim nvarchar(10)
)

select * from lesson1

insert into lesson1(ID ,Isim) values (1,'can')
insert into lesson1(ID ,Isim) values (2,'canboz')

select * from lesson1

create table lesson2
(
ID int primary key,
Isim nvarchar(10),
Soyisim nvarchar(20),
Yas int
)

insert into lesson2(ID ,Isim,Soyisim,Yas) values (1,'can','korkmaz',12)
insert into lesson2(ID ,Isim,Soyisim,Yas) values (2,'canboz','kor',23)

select * from lesson2
