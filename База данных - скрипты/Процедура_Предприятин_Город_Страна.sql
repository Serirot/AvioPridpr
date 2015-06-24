create proc Predpriytie_Gorod_Strana
as
select dbo.Предприятие.Наименование, dbo.Предприятие.Телефон, dbo.Города.Город, dbo.Страны.Страна
from dbo.Предприятие INNER JOIN dbo.Страны ON dbo.Предприятие.Страна = dbo.Страны.id
INNER JOIN dbo.Города ON dbo.Предприятие.Город = dbo.Города.id