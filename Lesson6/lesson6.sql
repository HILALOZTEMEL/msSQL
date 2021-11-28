
select *from Okul

insert into Okul values ('ankara',1111,'aaa',48)
insert into Okul values ('ankara',222,'aaa',84)
insert into Okul values ('ankara',3333,'sss',19)
insert into Okul values ('ankara',444,'faf',93)
insert into Okul values ('ankara',555,'sdsd',32)
insert into Okul values ('ankara',666,'ftey',99)
insert into Okul values ('ankara',888,'retre',22)
insert into Okul values ('ankara',999,'yty',12)
insert into Okul values ('ankara',12321,'eyer',99)
insert into Okul values ('ankara',312,'reter',32)
insert into Okul values ('istanbul',9883,'rter',23)
insert into Okul values ('istanbul',434242,'tret',32)
insert into Okul values ('istanbul',7334,'tre',11)
insert into Okul values ('istanbul',57876856,'rte',73)
insert into Okul values ('istanbul',543,'tyeer',32)
insert into Okul values ('istanbul',243,'strh',87)
insert into Okul values ('istanbul',7643,'treasf',32)
insert into Okul values ('istanbul',7663,'greg',12)
insert into Okul values ('istanbul',745,'sdf',33)
insert into Okul values ('istanbul',8786,'dfdf',88)

select min (not) as sehir from o

select AVG (not) from Okul
where
sehir='ankara' -- istanbul öðrencilerin not ortalamasý


select COUNT (DISTINCT sehir) from Okul 