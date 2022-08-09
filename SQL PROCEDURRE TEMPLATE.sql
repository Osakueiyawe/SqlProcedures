alter procedure SampleProcedure
@input int,
@output int out
as
declare @input1 int, @input2 int
Begin
Select @input1 = AccountId, @input2 = BranchCode from Account where AccountId = 1
End
if (@@ROWCOUNT = @input)
	set @output = @input2
else
	set @output = -1
return @output

declare @output1 int;
Execute SampleProcedure 1, @output1 output
select @output1

Select AccountId, BranchCode from Account where AccountId = 1