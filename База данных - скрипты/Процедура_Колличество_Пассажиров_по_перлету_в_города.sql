create proc Count_Passajir_Goroda
as
select dbo.Страны.Страна, dbo.Города.Город, count(dbo.Пассажир.Клиент) as КолличествоПассажиров
from dbo.Пассажир INNER JOIN dbo.Города ON dbo.Пассажир.Город_назначения = dbo.Города.id INNER JOIN
dbo.Страны ON dbo.Пассажир.Страна_назначения = dbo.Страны.id
group by dbo.Города.Город, dbo.Страны.Страна order by КолличествоПассажиров DESC