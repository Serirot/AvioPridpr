create proc Strana_Gorod
as
select dbo.Страны.Страна, dbo.Города.Город from dbo.Города INNER JOIN dbo.Страны ON dbo.Страны.id = dbo.Города.Страна