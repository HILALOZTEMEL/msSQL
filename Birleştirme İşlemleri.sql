--ayn� t�rde bilgiler i�eren tablolar� birle�tirerek tek bir tablo haline getirmek
--Farkl� tablolarda ayn� stun de�erleri olaml� mesela tablo 1 dede kitap ad� olmal� tanlo ikidede ayn� niteliklere sahip s�t�nlar gerklidir

--WHERE �LE B�RLE�T�RME

-- select (tabloda g�stermek istedi�im alanlar yani sutun adlar�) from (kullan�lcak tablolar)
--where tablo ad�.sutun ad�=tablo ad�.sutun ad�

select ProductName,UnitPrice,CategoryName from Products,Categories
where Products.CategoryID=Categories.CategoryID

--Takma isim kullanarak yapilisi

select ProductName,UnitPrice,CategoryName from Products p,Categories c
where P.CategoryID=C.CategoryID

--Birle�tirme i�lemini 3 tablo kullarak yapma 
select ProductName,UnitPrice,CategoryName from Products p,Categories c,Suppliers s
where P.CategoryID=C.CategoryID or p.SupplierID=s.SupplierID

--inner join iki tabloda kesi�enleri getirir

select ProductName,UnitPrice,CategoryName from Products p  inner Join Categories c
on P.CategoryID=C.CategoryID

--inner join ile birle�tir ve grupland�r bunuda yeni kolon olarak ekle
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