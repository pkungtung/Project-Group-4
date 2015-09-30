create database ProjectGroup4
use ProjectGroup4

create table Product
(
	itemcode varchar(10) primary key,
	name varchar(100),
	price float,
	egg varchar(10),
	img varchar(150),
	_event varchar(30),
	stt varchar(10)
)
select * from Product

insert into Product values('tc1', 'Fashion Happy Birthday Cake For Girls', 100, 'yes', '../imgProduct/1fashion-happy-birthday-cake-for-girls.png', 'Birthday','show')
insert into Product values('tc2', 'GELATO BIRTHDAY CAKE', 56, 'no', '../imgProduct/1gelato.jpg', 'Birthday','show')
insert into Product values('tc3', 'Oreo Birthday Cake', 75, 'no', '../imgProduct/1oreo-birthday-cakeac15.png', 'Birthday','show')
insert into Product values('tc4', 'Vanilla Bean Birthday Cake', 69, 'no', '../imgProduct/1vanilla.jpg', 'Birthday','show')
insert into Product values('tc5', 'Dress Birthday Cakes for Girls', 96, 'no', '../imgProduct/1dress-birthday-cakes-for-girlsa8a4.png', 'Birthday','show')
insert into Product values('tc6', 'Golden Anniversary Cake', 78, 'no', '../imgProduct/2golden anniversary cake.jpg', 'Anniversary','show')
insert into Product values('tc7', 'Happy Anniversary Heart Cake', 120, 'yes', '../imgProduct/2itm_happy-anniversary-hearts-cake2013-11-09_10-10-54_1.jpg', 'Anniversary','show')
insert into Product values('tc8', 'Ocean Anniversary Cake', 150, 'yes', '../imgProduct/2Ocean Anniversary Cake.jpg', 'Anniversary','show')
insert into Product values('tc9', 'Flower Cake', 200, 'yes', '../imgProduct/2Flower Cake.jpg', 'Anniversary','show')
insert into Product values('tc10', 'Silver and White Cake', 165, 'yes', '../imgProduct/2Silver and White.jpg', 'Anniversary','show')
insert into Product values('tc11', 'Our Engagement Cake', 300, 'yes', '../imgProduct/3Our Engagement Cake.jpg', 'Engagement','show')
insert into Product values('tc12', 'Mr&Mrs Cake', 180, 'yes', '../imgProduct/3mr and mrs.jpg', 'Engagement','show')
insert into Product values('tc13', 'Ring Box Engagement Cake', 145, 'yes', '../imgProduct/3Ring Box Engagement Cake.jpg', 'Engagement','show')
insert into Product values('tc14', 'Pretty Engagement Cake', 90, 'no', '../imgProduct/3Pretty.jpg', 'Engagement','show')
insert into Product values('tc15', 'Black & White ringbox Cake', 110, 'yes', '../imgProduct/3Black & White ringbox.jpg', 'Engagement','show')
insert into Product values('tc16', 'Chocolate and Chelsea FC ', 125, 'yes', '../imgProduct/4chelsea.jpg', 'Marriage','show')
insert into Product values('tc17', 'Silhouette Inspired Cake ', 146, 'yes', '../imgProduct/4Silhouette Inspired Cake.jpg', 'Marriage','show')
insert into Product values('tc18', 'Cupcake Wedding Cakes', 123, 'yes', '../imgProduct/4Cupcake Wedding Cakes.jpg', 'Marriage','show')
insert into Product values('tc19', 'Rainbow Wedding Cake', 136, 'yes', '../imgProduct/4Rainbow Wedding Cake.jpg', 'Marriage','show')
insert into Product values('tc20', 'Red Roses Wedding Cake', 194, 'yes', '../imgProduct/4Red Roses Wedding Cake.jpg', 'Marriage','show')
insert into Product values('tc21', 'Vanilla and Strawberry Cake', 156, 'yes', '../imgProduct/2Vanilla and Strawberry Cake.jpg', 'Anniversary','show')
insert into Product values('tc22', 'Berry Cake', 96, 'no', '../imgProduct/1berry.jpg', 'Birthday','show')
insert into Product values('tc23', 'Dog-Cake', 256, 'yes', '../imgProduct/1Dog-Cake.jpg', 'Birthday','show')
insert into Product values('tc24', 'Star Berry Cake', 86, 'no', '../imgProduct/1Star.jpg', 'Birthday','show')
insert into Product values('tc25', 'Raspberry Heart Swirl Cheese Cake', 216, 'no', '../imgProduct/2Raspberry Heart Swirl Cheesecake.jpg', 'Anniversary','show')
insert into Product values('tc26', 'Valentine Day Cake', 146, 'no', '../imgProduct/2valentine-day-cake.jpg', 'Anniversary','show')
insert into Product values('tc27', 'Pink Cup Cake', 8, 'no', '../imgProduct/3cupcake.jpg', 'Marriage','show')
insert into Product values('tc28', 'Burger Cake', 8, 'yes', '../imgProduct/1burgercake.jpg', 'Dessert','show')
insert into Product values('tc29', 'Flower Cup Cake', 8, 'no', '../imgProduct/1flowercake.jpg', 'Birthday','show')
insert into Product values('tc30', 'Chocolate Cup Cake', 8, 'no', '../imgProduct/1healthy-food.jpg', 'Birthday','show')
insert into Product values('tc31', 'Berry Pie', 8, 'no', '../imgProduct/5berrypie.jpg', 'Dessert','show')
insert into Product values('tc32', 'Cream Berry Pie', 8, 'no', '../imgProduct/5creamberrypie.jpg', 'Dessert','show')
insert into Product values('tc33', 'Fruit', 10, 'no', '../imgProduct/5fruit.jpg', 'Dessert','show')
insert into Product values('tc34', 'Fruit Cake', 8, 'no', '../imgProduct/5fruit-cake.jpg', 'Dessert','show')
insert into Product values('tc35', 'Italian Pie', 8, 'no', '../imgProduct/5italianpie.jpg', 'Dessert','show')
insert into Product values('tc36', 'Velvet Cup Cake', 8, 'no', '../imgProduct/5sweetcupcake.jpg', 'Dessert','show')


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