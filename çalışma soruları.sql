--CALI�MA SORULARI

--notu ortalamadan y�ksek olan ��rencileri listeleyiniz.
select Sehir,Not1,ogrNo from Notlandirma3
where Not1>(select avg(Not1) from Notlandirma3)

--Her kategorinin en �ok satan �r�n�n� ilk 5 tanesini getiren sorguyu yaz�n�z.
Select * from Satislar
where Urun=3


Select UrunAd,KategoriAd,UrunFiyat,COUNT(Adet) 
where Satislar
Group by UrunAd,KategoriAd Desc
from Urunler inner join Kategoriler
on Urunler.UrunKategori=Kategoriler.KategoriId
inner join Satislar 
on Satislar.Urun=Urunler.UrunId


