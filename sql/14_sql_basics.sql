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
        
alter table Students add (DateofBirth varchar(100));

update Students set DateofBirth = '2000'where RollNumber = 12;
update Students set DateofBirth = '2000'where RollNumber = 25;

# drop the new column
alter table Students drop column DateofBirth; 

alter table Students add (DateofBirth varchar(100) default '2000-02-12');
select * from Students;

desc Students;


alter table Students modify DateofBirth date;
alter table Students modify DateofBirth datetime;


alter table Students drop column ContactNumber; 

# RENAME A COLUMN

alter table Students change Name FullName varchar(100);

select Name from Faculties limit 1;

show tables;