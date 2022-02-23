alter procedure SignUpDetails
(
 @FirstName varchar(20),
 @LastName varchar(20),
 @Email varchar(40),
 @Phone bigint,
 @Password varchar(15)
)
as
begin try
     declare @Count int
	 declare @ReturnCode int
	 select @Count = count(Email) from EmployeeDetails where Email = @Email
	 if(@Count>0)
		begin
		set @ReturnCode = -1
		end
	 else
		begin
		set @ReturnCode = 1
	    insert into EmployeeDetails (FirstName,LastName,Email,Phone,Password) values ( @FirstName, @LastName , @Email, @Phone, @Password)
		end
	 select @ReturnCode as ReturnValue
end try
begin catch
select
    ERROR_NUMBER() as ErrorNumber,
    ERROR_STATE() as ErrorState,
    ERROR_PROCEDURE() as ErrorProcedure,
    ERROR_LINE() as ErrorLine,
    ERROR_MESSAGE() as ErrorMessage;
End catch


alter procedure LogInCredentials
(
 @Email varchar(20),
 @Password varchar(15)
)
as
declare @count int
begin try     
     select @count = count(Email) from EmployeeDetails where (Email=@Email and Password=@Password) 
     if(@count = 1)
	 begin
		insert into LogInDetails (Email,Password) values ( @Email, @Password)
		select * from EmployeeDetails where (Email=@Email and Password=@Password)
		select 1 as ReturnCode
	 end
	 else
	 begin
		select -1 as ReturnCode
	 end
end try
begin catch
select
    ERROR_NUMBER() as ErrorNumber,
    ERROR_STATE() as ErrorState,
    ERROR_PROCEDURE() as ErrorProcedure,
    ERROR_LINE() as ErrorLine,
    ERROR_MESSAGE() as ErrorMessage;
End catch


alter procedure PayformCredentials
(
 @NAME varchar(40),
 @IMG varchar(250),
 @GENDER varchar(10),
 @DEPARTMENT varchar(60),
 @SALARY varchar(10),
 @START_DATE varchar(15),
 @NOTES varchar(200)
)
as
begin try
     insert into PayformDetails (NAME,IMG,GENDER,DEPARTMENT,SALARY,START_DATE,NOTES) values ( @NAME, @IMG, @GENDER, @DEPARTMENT, @SALARY, @START_DATE, @NOTES)
end try
begin catch
select
    ERROR_NUMBER() as ErrorNumber,
    ERROR_STATE() as ErrorState,
    ERROR_PROCEDURE() as ErrorProcedure,
    ERROR_LINE() as ErrorLine,
    ERROR_MESSAGE() as ErrorMessage;
End catch