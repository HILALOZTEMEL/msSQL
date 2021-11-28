--verileri kopyalayýp baþka tablolara alma
select * INTO  customersBackup2021 from Customers --yeni tablo oluþturup içine attý

--Belli kolon için 
select CompanyName,ContactName,Address into Customers2 from Customers 
select CompanyName,ContactName,Address into Customers3 from Customers where City= 'London'
select * from Customers3

declare @Isim nvarchar(20)='Can BOZ'
declare @sayac int = 0
while @sayac <=len(@Isim)
begin
	print substring (@Isim,1,@sayac)
	set @sayac=@sayac+1
end

print 'while iþlem bitti'

set @Isim= reverse (@Isim)
while @sayac >=0
begin
	print substring (@Isim,1,@sayac)	
	set @sayac=@sayac-1
end
set @sayac=0
while @sayac >=0
begin
	print substring (@Isim,len(@Isim),@sayac)	
	set @sayac=@sayac-1
end


 