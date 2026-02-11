
If OBJECT_ID('Sales_Data' , 'U') Is Not Null
Drop Table Sales_Data  ;

Go

Create Table Sales_Data 
(

	CustomerID int Identity(1,1) Primary Key, 
	Age int, 
	Annual_Income int , 
	Spending_Score int , 
	Monthly_Visits int , 
	Gender varchar(50) , 
	Preferred_Products varchar(50)

) ;

Go
