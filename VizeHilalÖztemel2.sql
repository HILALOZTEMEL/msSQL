

--Soru 4.
--4. ikinci sorguda herhangi bir tabloda count kullan.


SELECT COUNT(KategoriAd) as "ka� tane kategori var?" FROM Kategoriler

SELECT COUNT(UrunMarka) as "kategori 3'te ka� tane Urun var?" FROM Urunler where UrunKategori=3

--inner join ile count  beraber yapt�m
select count(UrunMarka) as  "ka� tane telefon markas� var?" FROM Urunler inner join Kategoriler
on Urunler.UrunKategori=Kategoriler.KategoriId
where KategoriAd='Telefon'

--inner join ile count u ve where, grup by ,Having  sorgular� ile birle�tirdim
select UrunAd,KategoriAd,UrunFiyat,Count (Adet) as "Adet say�s�"
from Urunler inner join Kategoriler
on Urunler.UrunKategori=Kategoriler.KategoriId
inner join Satislar 
on Satislar.Urun=Urunler.UrunId
where Adet>0
Group by UrunAd,KategoriAd,UrunFiyat
Having KategoriAd='Bilgisayar'