


--Soru 3

--4 Tablolar ba�lan�r yap�lan sorguda her tablodan 1 kolon sonu� olarak al�nmas� laz�m. 
--sonu�ta 4 kolon veri gelmesi laz�m.



select MusteriAd+' '+MusteriSoyad as "musteri ad� soyad�", UrunAd,Fiyat ,PersonelName as "Kasiyer ad�" from Satislar inner Join Urunler
on Satislar.Urun=Urunler.UrunId
inner join Musteriler
on Satislar.Musteri=Musteriler.MusteriId
inner join Personel
on Satislar.Personel=Personel.PersonelId





select KategoriAd from Kategoriler
select MusteriBakiye from Musteriler
select Adet from Satislar
select UrunAdet from Urunler

--m�steri ad� ve soyas�n� tek bir kolon alt�na yazd�rd�m 
select MusteriAd+' '+MusteriSoyad as isimSoyisim from Musteriler


