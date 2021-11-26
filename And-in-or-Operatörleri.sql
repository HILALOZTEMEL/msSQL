--AND

--Posta kodu 98011 ve adressId 1 olanlar gelsin.
select * from Person.Address where PostalCode='98011' and AddressID=1


--OR


--Posta kodu 98011 veya adressId 1 olanlar gelsin.
select * from Person.Address where PostalCode='98011' or AddressID=1

--Posta kodu 98011 veya adressId 1 olanlar�n �ehirleri gelsin gelsin.
select City from Person.Address where PostalCode='98011' or AddressID=1

--Berlin veya StateProvinceID>70 olanlar� B�y�kten k����e s�rala
select * from Person.Address where City='Berlin' or StateProvinceID>70
order by AddressID desc


--IN(aral�kde�eri) in deki de�erlerin kar��l��� olan de�erleri verir.

select * from Person.Address where PostalCode in('98011','98272','12210')

--City i�inde a harfi olanlar�n hepsini listele
select * from Person.Address where City like ('%a%')

select * from Person.Address where City like ('%a%') and PostalCode in('98011','98272','12210')
