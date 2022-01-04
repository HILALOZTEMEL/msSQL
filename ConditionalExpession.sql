select Fiyat,
CASE
	WHEN Fiyat>523 Then 15+Fiyat
	WHEN Fiyat=523 Then 10+Fiyat
	else 5+Fiyat
END AS fiyatBilgi

from Satislar 