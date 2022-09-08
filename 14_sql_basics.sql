create database University;

show databases;

use University;

create table Students (RollNumber int ,Name  Varchar(100), 
						Address varchar(255), ContactNumber varchar(100), 
                        primary key(RollNumber));
                        
create table Faculties (FacultyId int,Name Varchar(100) Not null, 
						Class varchar(100), EmailId varchar(100), 
                        primary key(FacultyId));
                        
desc Students;
select * from Students;
desc Faculties;

## insert data

insert into Students values(12, 'Abhishek', 'New Delhi', 658689489);

insert into Students (RollNumber, Name, Address, ContactNumber) 
values 	(25, 'Aman', 'Bengaluru', 3256987412),
		(36, 'Anshul', 'Hyderabad', 258746985),
		(65, 'Anand', 'Kolkata', 236541987),
		(69, 'Abhishek', 'New Delhi', 254136854);
        
select * from Students;
select * from Faculties;

insert into Faculties
values 	(1,'Shah', 'Math', 'shah@xyz.com'),
		(2,'Kumar','Hindi', 'kumar@xyz.com'),
		(3,'Dahiya', 'English', 'dahiya@xyz.com'),
		(4,'Gairols', 'Science', 'gairols@xyz.com');
        

