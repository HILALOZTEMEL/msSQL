
--Soru 5
--5. left, right, full inner join uygula.



--Inner join 1
select SatisId,UrunAd,MusteriAd+' '+MusteriSoyad as "Ad Soyad" from Satislar inner Join Urunler
on Satislar.Urun=Urunler.UrunId
inner join Musteriler
on Satislar.Musteri=Musteriler.MusteriId



--inner join 2
select UrunAd,KategoriAd,UrunFiyat from Urunler inner join Kategoriler
on Urunler.UrunKategori=Kategoriler.KategoriId
inner join Satislar 
on Satislar.Urun=Urunler.UrunId



--Right Join 1
select SatisId,UrunAd,MusteriAd,MusteriSoyad from Satislar Right Join Urunler
on Satislar.Urun=Urunler.UrunId
Right Join Musteriler
on Satislar.Musteri=Musteriler.MusteriId



--left join 1
select UrunAd,KategoriAd,UrunFiyat,UrunMarka from Urunler left Join Kategoriler
on Urunler.UrunKategori=Kategoriler.KategoriId



--left join 2
select UrunAd,KategoriAd,UrunFiyat,UrunMarka from  Kategoriler left Join Urunler 
on Kategoriler.KategoriId=Urunler.UrunKategori



--full outer Join 1

select SatisId,UrunAd,MusteriAd,MusteriSoyad from Satislar full outer Join Urunler
on Satislar.Urun=Urunler.UrunId
full outer Join Musteriler
on Satislar.Musteri=Musteriler.MusteriId



--full outer Join 2

select MusteriAd+' '+MusteriSoyad as "musteri adý soyadý", UrunAd,Fiyat,PersonelName as "Kasiyer adý" from Satislar full outer Join Urunler
on Satislar.Urun=Urunler.UrunId
full outer Join Musteriler
on Satislar.Musteri=Musteriler.MusteriId
full outer Join Personel
on Satislar.Personel=Personel.PersonelId



--full outer Join 3 (full join ile ürünadý a harfi ile baþlayanlarý getirttim)

select SatisId,UrunAd,MusteriAd,MusteriSoyad from Satislar full outer Join Urunler
on Satislar.Urun=Urunler.UrunId
full outer Join Musteriler
on Satislar.Musteri=Musteriler.MusteriId
where UrunAd Like 'a%'



--inner join 3 (Telefon Kategorisinde adet sayýsý 0 dan fazla olan ürünlerin fiyatlarýný listeledim)
select UrunAd,KategoriAd,UrunFiyat,COUNT(Adet) as "Adet Sayisi"
from Urunler inner join Kategoriler
on Urunler.UrunKategori=Kategoriler.KategoriId
inner join Satislar 
on Satislar.Urun=Urunler.UrunId
where Adet>0
Group by UrunAd,KategoriAd,UrunFiyat
Having KategoriAd='Telefon'



--inner join 4 (Bilgisyar Kategorisinde adet sayýsý 0 dan fazla olan ürünlerin fiyatlarýný listeledim ,adet sayýsýna göre azalan yönde sýralama yaptýrdým)
select UrunAd,KategoriAd,UrunFiyat,Count (Adet) as "Adet sayýsý",sum(Fiyat) as "Toplam fiyat"
from Urunler inner join Kategoriler
on Urunler.UrunKategori=Kategoriler.KategoriId
inner join Satislar 
on Satislar.Urun=Urunler.UrunId
where Adet>0
Group by UrunAd,KategoriAd,UrunFiyat 
Having KategoriAd='Bilgisayar' 
Order by Count (Adet)  desc



--Right Join 2 (SatýþId si azalan sýrada  sýralattýrdým)
select SatisId,UrunAd,MusteriAd,MusteriSoyad from Satislar Right Join Urunler
on Satislar.Urun=Urunler.UrunId
Right Join Musteriler
on Satislar.Musteri=Musteriler.MusteriId
Order by SatisId desc