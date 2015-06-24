create proc proc_insert_strana 
@Страна varchar(50)
as
insert into dbo.Страны values (@Страна)