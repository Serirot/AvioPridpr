create proc ID_Stranx_to_Gorod
@ID_Stranx int
as
select dbo.Города.Город from dbo.Города where dbo.Города.Страна = @ID_Stranx