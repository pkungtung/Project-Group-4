create database ProjectGroup4
use ProjectGroup4
create  table Product(
	itemCode varchar(50),
	name varchar(50),
	price float,
	img varchar(50),
	recipe varchar(max),
	egg varchar(20),
	eventId int foreign key references eventCake(eventId)

)

create table eventCake(
	eventId int primary key,
	name varchar(50),
	
)


insert into eventCake values(1,'Birthday')
insert into eventCake values(2,'Anniversary')
insert into eventCake values(3,'Engagement')
insert into eventCake values(4,'Marriage')


create table logincake(
	_id int primary key identity (1,1),
	_user varchar(50) unique not null,
	_pass varchar(50) not null,
	_email varchar(100) not null,
	_level varchar (20) not null
)
insert into logincake values('admin','123456','muoinv@gmail.com' ,'admin')
insert into logincake values('user1','123456','muoinv@gmail.com' ,'user')
select * from logincake