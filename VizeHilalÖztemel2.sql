

--Soru 4.
--4. ikinci sorguda herhangi bir tabloda count kullan.


SELECT COUNT(KategoriAd) as "kaç tane kategori var?" FROM Kategoriler

SELECT COUNT(UrunMarka) as "kategori 3'te kaç tane Urun var?" FROM Urunler where UrunKategori=3

--inner join ile count  beraber yaptým
select count(UrunMarka) as  "kaç tane telefon markasý var?" FROM Urunler inner join Kategoriler
on Urunler.UrunKategori=Kategoriler.KategoriId
where KategoriAd='Telefon'

--inner join ile count u ve where, grup by ,Having  sorgularý ile birleþtirdim
select UrunAd,KategoriAd,UrunFiyat,Count (Adet) as "Adet sayýsý"
from Urunler inner join Kategoriler
on Urunler.UrunKategori=Kategoriler.KategoriId
inner join Satislar 
on Satislar.Urun=Urunler.UrunId
where Adet>0
Group by UrunAd,KategoriAd,UrunFiyat
Having KategoriAd='Bilgisayar'