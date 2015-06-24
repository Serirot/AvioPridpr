create proc insert_Passajir
@Data smalldatetime,
@Strana int,
@Gorod int,
@Klient int,
@Predpr int
as
insert into dbo.Пассажир values (@Data, @Strana, @Gorod, @Klient, @Predpr)