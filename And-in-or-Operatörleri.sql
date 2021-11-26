--AND

--Posta kodu 98011 ve adressId 1 olanlar gelsin.
select * from Person.Address where PostalCode='98011' and AddressID=1


--OR


--Posta kodu 98011 veya adressId 1 olanlar gelsin.
select * from Person.Address where PostalCode='98011' or AddressID=1

--Posta kodu 98011 veya adressId 1 olanlarýn þehirleri gelsin gelsin.
select City from Person.Address where PostalCode='98011' or AddressID=1

--Berlin veya StateProvinceID>70 olanlarý Büyükten küçüðe sýrala
select * from Person.Address where City='Berlin' or StateProvinceID>70
order by AddressID desc


--IN(aralýkdeðeri) in deki deðerlerin karþýlýðý olan deðerleri verir.

select * from Person.Address where PostalCode in('98011','98272','12210')

--City içinde a harfi olanlarýn hepsini listele
select * from Person.Address where City like ('%a%')

select * from Person.Address where City like ('%a%') and PostalCode in('98011','98272','12210')
