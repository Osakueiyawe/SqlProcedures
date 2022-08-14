USE [ECOMMERCEAPI]
GO
/****** Object:  StoredProcedure [dbo].[TrySampleProcedure]    Script Date: 13/08/2022 8:27:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[TrySampleProcedure]
@output int out
as
if exists (select CategoryName from CategoryTable)
	Begin		
		select CategoryName from CategoryTable	
		
	if (@@ROWCOUNT > 0)
		set @output = @@ROWCOUNT
	else
		set @output = -1
	End
else
	set @output = -2






declare @output1 int;
Execute TrySampleProcedure @output1 output
select @output1 as Output