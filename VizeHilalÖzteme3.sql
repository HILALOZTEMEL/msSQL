


--Soru 3

--4 Tablolar baðlanýr yapýlan sorguda her tablodan 1 kolon sonuç olarak alýnmasý lazým. 
--sonuçta 4 kolon veri gelmesi lazým.



select MusteriAd+' '+MusteriSoyad as "musteri adý soyadý", UrunAd,Fiyat ,PersonelName as "Kasiyer adý" from Satislar inner Join Urunler
on Satislar.Urun=Urunler.UrunId
inner join Musteriler
on Satislar.Musteri=Musteriler.MusteriId
inner join Personel
on Satislar.Personel=Personel.PersonelId





select KategoriAd from Kategoriler
select MusteriBakiye from Musteriler
select Adet from Satislar
select UrunAdet from Urunler

--müsteri adý ve soyasýný tek bir kolon altýna yazdýrdým 
select MusteriAd+' '+MusteriSoyad as isimSoyisim from Musteriler


