
/*DDLcreate database
create database storee;*/
#use storee;

/*DDL create
create table countries (
code int primary key,
name varchar(20) unique,
continent_name varchar (20) not null);

create table users (
id int primary key,
full_name varchar (20),
email varchar (20) unique,
gender char (1) check (gender = 'm' or gender = 'f'),
date_of_birth varchar(15),
created_at datetime,
country_code int ,
foreign key (country_code) references countries (code));

create table orders (
id int primary key,
user_id int,
status varchar (6) check (status = 'start' or status = 'finish' ),
created_at datetime,
foreign key (user_id) references users (id));

create table order_items(
order_id int,
product_id int ,
primary key (product_id , order_id),
quantity int default 0,
foreign key (order_id) references orders (id),
foreign key (product_id) references products (id));

create table products(
id int primary key,
name varchar (10) not null,
price int default 0,
status varchar(10)  check (status = 'valid' or status = 'expired' ),
created_at datetime);

alter table products modify column created_at datetime default current_timestamp;
alter table users modify column created_at datetime default current_timestamp;
alter table orders modify column created_at datetime default current_timestamp;
*/

/*DML insert
insert into countries values (123, 'saudi arabia', 'asia');

insert into users  (id, full_name, email, gender, date_of_birth)
 values(5, 'njoud almubarak','njouddd@hotmail.com', 'f', '30-08-1995' );

insert into orders (id,user_id,status)
 values (6, 1, 'start');

insert into products ( id, name, price,status)
 values (4, 'notebook', 50, 'valid');

insert into order_items values (1,1, 1);*/

/*DML update

update countries set name ='saudi' where code = 123;*/

/*DML delete
delete from products where id =4;

*/

/*DQL
select * from products;
select * from users;
select * from order_item;
select * from countries;
select * from orders;*/






