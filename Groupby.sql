
--Groupby :

--Mesela renklere g�re veri getirmek(Toplam G�venilir stok say�s�n�) istedimizde kullan�r�z

Select Color,Sum (SafetyStockLevel) as "ToplamG�venilirStokSay�s�"from Production.Product
group by Color

Select Color,Sum (SafetyStockLevel) as ToplamG�venilirStokSay�s� from Production.Product
group by Color