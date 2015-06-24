create proc Stranx_count_pereletx
as			
select dbo.Страны.Страна, count(distinct dbo.Пассажир.НомерРейса) as колличествоПерелетов
from dbo.Пассажир, dbo.Страны where dbo.Пассажир.Страна_назначения = dbo.Страны.id
group by dbo.Страны.Страна order by колличествоПерелетов DESC