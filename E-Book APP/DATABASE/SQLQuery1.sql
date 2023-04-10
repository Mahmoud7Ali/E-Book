create database EBookStore;

use [EBookStore]
go

create table Publishers(P_id int primary key,
P_name nvarchar(max) not null,
Phone nvarchar(max) not null ,
City nvarchar(max));


create table Books ( ISBN int  primary key,
Title nvarchar(max) not null,
Price numeric(10,2) not null,
Page_count int,
Type nvarchar(max) not null,
P_id int not null,
constraint P_id_fk foreign key (P_id)references Publishers(P_id));


create table Author(Author_id int primary key,
First_name nvarchar(max) not null,
Last_name nvarchar(max) not null);

create table Written(
ISBN int not null,
Au_id int not null,
constraint ISBN_fk foreign key (ISBN)references Books(ISBN) ,
constraint Au_id_fk foreign key (Au_id)references Author(Author_id));

create table Publishe_Phone(Phone nvarchar(15) primary key,
Pu_id int not null,
constraint Pu_id_fk foreign key (Pu_id)references Publishers(p_id));