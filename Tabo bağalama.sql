--Tablolar� ba�lama
select SatisId,UrunAd,MusteriAd,MusteriSoyad from Satislar inner Join Urunler
on Satislar.Urun=Urunler.UrunId
inner join Musteriler
on Satislar.Musteri=Musteriler.MusteriId

--M��teri ad� ile soyad� birlikte olsun
select SatisId,UrunAd,MusteriAd+' '+MusteriSoyad from Satislar inner Join Urunler
on Satislar.Urun=Urunler.UrunId
inner join Musteriler
on Satislar.Musteri=Musteriler.MusteriId

--M��teri ad� ile soyad� birlikte olsun ama kolon ad� koyal�m
select SatisId,UrunAd,MusteriAd+' '+MusteriSoyad as 'M��teri' from Satislar inner Join Urunler
on Satislar.Urun=Urunler.UrunId
inner join Musteriler
on Satislar.Musteri=Musteriler.MusteriId
