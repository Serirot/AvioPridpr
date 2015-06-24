create proc insert_Gorod
@Город varchar(50),
@ID_Страна int
as
insert into dbo.Города values (@Город, @ID_Страна)
