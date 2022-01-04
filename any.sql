--ANY ve ALL komutlarý bir WHERE veya HAVING kullandýðýmýz zaman kullanýlýr
--ANY aralýktaki deðerlerden herhangi biri için iþlem doðruysa koþulun doðru olacaðý anlamýna gelir.

select ProductName from Products
where ProductID=ANY(select ProductID from [Order Details] where Quantity=10)
