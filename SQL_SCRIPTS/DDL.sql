--- This Script Creates a Database By First Checking If It Already Exists 
--- If Does Exits it set a condition stating Only One User Is allowed To Use The Database At A Time 
--- If The Database Exists It Deletes it first then  Create another one

Use Master 

GO 

If exists (Select 1 from sys.databases Where name = 'Sales_Data')
BEGIN
	Alter database Sales_Data SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	Drop database Sales_Data ;
End

Go
	Create database Sales_Data ;
Go

