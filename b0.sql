CREATE DATABASE PIZZASHOP
USE PIZZASHOP
Create table orders(Order_Id int not null,Customer_Id int not null,Order_Date date not null,primary key(Order_Id));
Create table orderdetails(Order_Details_Id int not null,Order_Id int not null,Pizza_Id int not null,Quantity int not null,Final_Amount int not null,primary key(Order_Details_Id));
Create table customers(Customer_Id int not null,Name varchar(20),Gender varchar(10),Age int not null,primary key(Customer_Id));
create table pizza(Pizza_Id int not null,Pizza_Name varchar(30),Category varchar(10),Size varchar(10),Price int not null,primary key(Pizza_Id));
