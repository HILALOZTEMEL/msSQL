
--Groupby :

--Mesela renklere göre veri getirmek(Toplam Güvenilir stok sayýsýný) istedimizde kullanýrýz

Select Color,Sum (SafetyStockLevel) as "ToplamGüvenilirStokSayýsý"from Production.Product
group by Color

Select Color,Sum (SafetyStockLevel) as ToplamGüvenilirStokSayýsý from Production.Product
group by Color