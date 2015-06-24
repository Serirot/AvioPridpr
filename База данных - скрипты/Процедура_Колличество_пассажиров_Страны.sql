create proc Count_Passajir_Strana
as
select dbo.Страны.Страна, count(dbo.Пассажир.Клиент) as КолличествоПассажиров from dbo.Пассажир,
dbo.Страны where dbo.Пассажир.Страна_назначения = dbo.Страны.id
group by dbo.Страны.Страна order by КолличествоПассажиров DESC