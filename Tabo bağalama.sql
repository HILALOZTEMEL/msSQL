--Tablolarý baðlama
select SatisId,UrunAd,MusteriAd,MusteriSoyad from Satislar inner Join Urunler
on Satislar.Urun=Urunler.UrunId
inner join Musteriler
on Satislar.Musteri=Musteriler.MusteriId

--Müþteri adý ile soyadý birlikte olsun
select SatisId,UrunAd,MusteriAd+' '+MusteriSoyad from Satislar inner Join Urunler
on Satislar.Urun=Urunler.UrunId
inner join Musteriler
on Satislar.Musteri=Musteriler.MusteriId

--Müþteri adý ile soyadý birlikte olsun ama kolon adý koyalým
select SatisId,UrunAd,MusteriAd+' '+MusteriSoyad as 'Müþteri' from Satislar inner Join Urunler
on Satislar.Urun=Urunler.UrunId
inner join Musteriler
on Satislar.Musteri=Musteriler.MusteriId
