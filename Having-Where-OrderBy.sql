select COUNT(CustomerID),country from Customers
Group by Country
Having COUNT(CustomerID)>5 --5 ten büyük olanlarý yazdýrýr

Select *from Notlandirma3
Select Sehir,AVG(Not1)
From Notlandirma3
GROUP BY Sehir --þehir bazlý ortalam alma


SELECT Sehir, Not1 FROM Notlandirma3 WHERE Not1>=70



SELECT Sehir, Count(Not1) FROM Notlandirma3 WHERE Not1>=70 GROUP BY Sehir HAVING Count(Not1)>0 
SELECT Sehir, Count(Not1) FROM Notlandirma3 WHERE Not1>=70 GROUP BY Sehir HAVING Count(Not1)>0 ORDER BY DESC 