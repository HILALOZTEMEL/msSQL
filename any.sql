--ANY ve ALL komutlar� bir WHERE veya HAVING kulland���m�z zaman kullan�l�r
--ANY aral�ktaki de�erlerden herhangi biri i�in i�lem do�ruysa ko�ulun do�ru olaca�� anlam�na gelir.

select ProductName from Products
where ProductID=ANY(select ProductID from [Order Details] where Quantity=10)
