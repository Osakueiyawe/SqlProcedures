create procedure NewProcedure
@time date,
@output int out
as
if not exists (select CartId from CartDetails)
Begin
set @output = 0
End
else
Begin
select CartId from CartDetails where CONVERT(date, OrderTime) >= @time
set @output = @@ROWCOUNT
End

declare @output1 int;
Execute NewProcedure '2022-05-09', @output1 output
select @output1