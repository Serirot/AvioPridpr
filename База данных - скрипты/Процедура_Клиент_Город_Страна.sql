create proc Klien_Gorod_Strana
as
select dbo.Клиент.ФИО, dbo.Клиент.Телефон, dbo.Страны.Страна, dbo.Города.Город from dbo.Клиент
INNER JOIN dbo.Страны ON dbo.Клиент.Страна = dbo.Страны.id INNER JOIN dbo.Города ON dbo.Клиент.Город = dbo.Города.id