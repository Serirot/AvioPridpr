create proc Passajir
as
select dbo.Пассажир.ДатаВылета, dbo.Клиент.ФИО as Пассажир, dbo.Страны.Страна as СтранаНазначения,
dbo.Города.Город as ГородНазначения, dbo.Предприятие.Наименование as Перевозчик from dbo.Пассажир
INNER JOIN dbo.Страны ON dbo.Пассажир.Страна_назначения = dbo.Страны.id INNER JOIN dbo.Города ON
dbo.Пассажир.Город_назначения = dbo.Города.id INNER JOIN dbo.Клиент ON dbo.Пассажир.Клиент = dbo.Клиент.id
INNER JOIN dbo.Предприятие ON dbo.Пассажир.Предприятие = dbo.Предприятие.id