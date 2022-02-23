create database WebForms;

use WebForms;

create table EmployeeDetails(Id int identity (1,1) primary key, FirstName varchar(20) not null, LastName varchar(20) not null, Email varchar(40) unique not null, Phone bigint not null,Password varchar(15) not null, RegisteredDate datetime default sysdatetime());
select * from EmployeeDetails;

create table LogInDetails(Id int identity (1,1) primary key, Email varchar(50) not null, Password varchar(15) not null, LoggedTime datetime default sysdatetime());
select * from LogInDetails; 

create table PayformDetails(ID int identity (1,1) primary key,IMG varchar(250) not null, NAME varchar(40) not null, GENDER varchar(10) not null, DEPARTMENT varchar(60) not null, SALARY varchar(10) not null, START_DATE varchar(15) not null, NOTES varchar(200));
select * from PayformDetails;