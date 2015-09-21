create database ProjectGroup4
use ProjectGroup4


create table Product
(
	itemcode varchar(10) primary key,
	name varchar(100),
	price float,
	egg varchar(10),
	img varchar(150),
	_event varchar(30)
)
select * from Product

insert into Product values('tc1', 'Fashion Happy Birthday Cake For Girls', 100, 'Yes', '../imgProduct/1fashion-happy-birthday-cake-for-girls.png', 'Birthday')
insert into Product values('tc2', 'GELATO BIRTHDAY CAKE', 56, 'No', '../imgProduct/1gelato.jpg', 'Birthday')
insert into Product values('tc3', 'Oreo Birthday Cake', 75, 'Yes', '../imgProduct/1oreo-birthday-cakeac15.png', 'Birthday')
insert into Product values('tc4', 'Vanilla Bean Birthday Cake', 69, 'No', '../imgProduct/1vanilla.jpg', 'Birthday')
insert into Product values('tc5', 'Dress Birthday Cakes for Girls', 96, 'Yes', '../imgProduct/1dress-birthday-cakes-for-girlsa8a4.png', 'Birthday')
insert into Product values('tc6', 'Golden Anniversary Cake', 78, 'No', '../imgProduct/2golden anniversary cake.jpg', 'Anniversary')
insert into Product values('tc7', 'Happy Anniversary Heart Cake', 120, 'Yes', '../imgProduct/2itm_happy-anniversary-hearts-cake2013-11-09_10-10-54_1.jpg', 'Anniversary')
insert into Product values('tc8', 'Ocean Anniversary Cake', 150, 'No', '../imgProduct/2Ocean Anniversary Cake.jpg', 'Anniversary')
insert into Product values('tc9', 'Flower Cake', 200, 'Yes', '../imgProduct/2Flower Cake.jpg', 'Anniversary')
insert into Product values('tc10', 'Silver and White Cake', 165, 'No', '../imgProduct/2Silver and White.jpg', 'Anniversary')
insert into Product values('tc11', 'Our Engagement Cake', 300, 'Yes', '../imgProduct/3Our Engagement Cake.jpg', 'Engagement')
insert into Product values('tc12', 'Mr&Mrs Cake', 180, 'No', '../imgProduct/3mr and mrs.jpg', 'Engagement')
insert into Product values('tc13', 'Ring Box Engagement Cake', 145, 'Yes', '../imgProduct/3Ring Box Engagement Cake.jpg', 'Engagement')
insert into Product values('tc14', 'Pretty Engagement Cake', 90, 'No', '../imgProduct/3Pretty.jpg', 'Engagement')
insert into Product values('tc15', 'Black & White ringbox Cake', 110, 'Yes', '../imgProduct/3Black & White ringbox.jpg', 'Engagement')
insert into Product values('tc16', 'Chocolate and Chelsea FC ', 125, 'No', '../imgProduct/4chelsea.jpg', 'Marriage')
insert into Product values('tc17', 'Silhouette Inspired Cake ', 146, 'Yes', '../imgProduct/4Silhouette Inspired Cake.jpg', 'Marriage')
insert into Product values('tc18', 'Cupcake Wedding Cakes', 123, 'No', '../imgProduct/4Cupcake Wedding Cakes.jpg', 'Marriage')
insert into Product values('tc19', 'Rainbow Wedding Cake', 136, 'Yes', '../imgProduct/4Rainbow Wedding Cake.jpg', 'Marriage')
insert into Product values('tc20', 'Red Roses Wedding Cake', 194, 'No', '../imgProduct/4Red Roses Wedding Cake.jpg', 'Marriage')
insert into Product values('tc21', 'Berry Cake', 110, 'Yes', '../imgProduct/1berry.jpg', 'Birthday')
insert into Product values('tc22', 'Star Cake', 110, 'Yes', '../imgProduct/1Star.jpg', 'Birthday')
insert into Product values('tc23', 'Cute Dog Cake', 110, 'Yes', '../imgProduct/2Dog-Cake.jpg', 'Anniversary')
insert into Product values('tc24', 'Valentine Day Cake', 110, 'Yes', '../imgProduct/2valentine-day-cake.jpg', 'Anniversary')
insert into Product values('tc25', 'Vanilla & Strawberry Cake', 110, 'Yes', '../imgProduct/1Vanilla and Strawberry Cake.jpg', 'Birthday')
insert into Product values('tc26', 'Raspberry Heart Swirl Cheese Cake', 178, 'No', '../imgProduct/2Raspberry Heart Swirl Cheesecake.jpg', 'Anniversary')

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