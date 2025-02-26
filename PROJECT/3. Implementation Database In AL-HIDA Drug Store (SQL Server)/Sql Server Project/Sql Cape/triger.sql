create database DB_DrugStore
use DB_DrugStore


create table tbSupplier(
ID_Supplier varchar(12) not null primary key,
Name varchar(50) not null,
Medicine_Name varchar(50) not null,
Address_ varchar (50) not null,
Phone_Number varchar(12) not null,
Qty_Supplier int
)

create table tbMedicine(
ID_Medicine varchar(12) not null primary key,
Name varchar(50) not null,
Type_ varchar(25) not null,
Used_For varchar(50) not null,
Cost money not null,
ID_Supplier varchar(50),
Qty_Medicine int
)

create trigger insert_data_tbMedicine
on tbMedicine after insert
as
update tbSupplier set tbSupplier.Qty_Supplier = tbSupplier.Qty_Supplier - inserted.Qty_Medicine
from inserted where tbSupplier.ID_Supplier = inserted.ID_Supplier

insert into tbSupplier values('32012000001','Michael Steve','New York, USA','082200000010','50')
insert into tbSupplier values('32012000002','George Keel','California, USA','082200000020','120')

insert into tbMedicine values('ABNDZL','Albendazol','Pill','Clean worms and parasytes in the stomach','15000','32012000001','10')
insert into tbMedicine values('ABNDZ9','Albendazol','Pill','Clean worms and parasytes in the stomach','15000','32012000002','20')

select *from tbSupplier
select *from tbMedicine