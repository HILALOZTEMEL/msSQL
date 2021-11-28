--ayný türde bilgiler içeren tablolarý birleþtirerek tek bir tablo haline getirmek
--Farklý tablolarda ayný stun deðerleri olamlý mesela tablo 1 dede kitap adý olmalý tanlo ikidede ayný niteliklere sahip sütünlar gerklidir

--WHERE ÝLE BÝRLEÞTÝRME

-- select (tabloda göstermek istediðim alanlar yani sutun adlarý) from (kullanýlcak tablolar)
--where tablo adý.sutun adý=tablo adý.sutun adý

select ProductName,UnitPrice,CategoryName from Products,Categories
where Products.CategoryID=Categories.CategoryID

--Takma isim kullanarak yapilisi

select ProductName,UnitPrice,CategoryName from Products p,Categories c
where P.CategoryID=C.CategoryID

--Birleþtirme iþlemini 3 tablo kullarak yapma 
select ProductName,UnitPrice,CategoryName from Products p,Categories c,Suppliers s
where P.CategoryID=C.CategoryID or p.SupplierID=s.SupplierID

--inner join iki tabloda kesiþenleri getirir

select ProductName,UnitPrice,CategoryName from Products p  inner Join Categories c
on P.CategoryID=C.CategoryID

--inner join ile birleþtir ve gruplandýr bunuda yeni kolon olarak ekle
select ProductName,CategoryName,UnitPrice from Products p  inner Join Categories c
on P.CategoryID=C.CategoryID
order by UnitPrice asc

select CategoryName,avg( UnitPrice ) as "ortFiat" from Products p  inner Join Categories c
on P.CategoryID=C.CategoryID 
group by CategoryName order by CategoryName asc

--Right join 

select ProductName,CategoryName,UnitPrice from Products p  Right Join Categories C
on P.CategoryID=C.CategoryID

--outer join 

select notlandirma,ogrenci bilgi,UnitPrice from Products p  full outer Join Categories C
on P.CategoryID=C.CategoryID