create database thecake
use thecake
create table Product
(
	itemcode varchar(10) primary key,
	name varchar(100),
	price float,
	img varchar(150),
	_event varchar(30)
)
select * from Product

insert into Product values('tc1', 'Fashion Happy Birthday Cake For Girls', 100, '../imgProduct/1fashion-happy-birthday-cake-for-girls.png', 'birthday')
insert into Product values('tc2', 'GELATO BIRTHDAY CAKE', 56, '../imgProduct/1gelato.jpg', 'birthday')
insert into Product values('tc3', 'Oreo Birthday Cake', 75, '../imgProduct/1oreo-birthday-cakeac15.png', 'birthday')
insert into Product values('tc4', 'Vanilla Bean Birthday Cake', 69, '../imgProduct/1vanilla.jpg', 'birthday')
insert into Product values('tc5', 'Dress Birthday Cakes for Girls', 96, '../imgProduct/1dress-birthday-cakes-for-girlsa8a4.png', 'birthday')
insert into Product values('tc6', 'Golden Anniversary Cake', 78, '../imgProduct/2golden anniversary cake.jpg', 'anniversary')
insert into Product values('tc7', 'Happy Anniversary Heart Cake', 120, '../imgProduct/2itm_happy-anniversary-hearts-cake2013-11-09_10-10-54_1.jpg', 'anniversary')
insert into Product values('tc8', 'Ocean Anniversary Cake', 150, '../imgProduct/2Ocean Anniversary Cake.jpg', 'anniversary')
insert into Product values('tc9', 'Flower Cake', 200, '../imgProduct/2Flower Cake.jpg', 'anniversary')
insert into Product values('tc10', 'Silver and White Cake', 165, '../imgProduct/2Silver and White.jpg', 'anniversary')
insert into Product values('tc11', 'Our Engagement Cake', 300, '../imgProduct/3Our Engagement Cake.jpg', 'Engagement')
insert into Product values('tc12', 'Mr&Mrs Cake', 180, '../imgProduct/3mr and mrs.jpg', 'Engagement')
insert into Product values('tc13', 'Ring Box Engagement Cake', 145, '../imgProduct/3Ring Box Engagement Cake.jpg', 'Engagement')
insert into Product values('tc14', 'Pretty Engagement Cake', 90, '../imgProduct/3Pretty.jpg', 'Engagement')
insert into Product values('tc15', 'Black & White ringbox Cake', 110, '../imgProduct/3Black & White ringbox.jpg', 'Engagement')
insert into Product values('tc16', 'Chocolate and Chelsea FC ', 125, '../imgProduct/4chelsea.jpg', 'Marriage')
insert into Product values('tc17', 'Silhouette Inspired Cake ', 146, '../imgProduct/4Silhouette Inspired Cake.jpg', 'Marriage')
insert into Product values('tc18', 'Cupcake Wedding Cakes', 123, '../imgProduct/4Cupcake Wedding Cakes.jpg', 'Marriage')
insert into Product values('tc19', 'Rainbow Wedding Cake', 136, '../imgProduct/4Rainbow Wedding Cake.jpg', 'Marriage')
insert into Product values('tc20', 'Red Roses Wedding Cake', 194, '../imgProduct/4Red Roses Wedding Cake.jpg', 'Marriage')


create table _Order
(
	itemcode varchar(10),
	quantity int,
	address varchar(100),
	deliverdate varchar(20)
)

create table Customer
(
	name varchar(30),
	address varchar(100),
	phone int,
	birth varchar(30)
)s