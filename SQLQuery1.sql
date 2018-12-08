create database retailDB

use retailDB

create table Costomers(
costomer_id char(10)primary key,
name varchar(30),
address varchar(30),
region_id varchar(5)
)


create table suppliers(
suppliers_id char(10)primary key,
name varchar(30),
address varchar(50),
)


create table categories(
category_id char(6)primary key,
explanation varchar(50),
)

create table items(
item_id char(15)primary key,
name varchar(50),
stok varchar(50),
purchasing_price money,
selling_price money,
category_id char(6) foreign key references categories (category_id),
supplier_id char(10) foreign key references  suppliers (supplier_id)
)


create table purchase_items(
purchase_id char(14)foreign key purchase items(purchase_id)
item_id char(15) foreign key references items(item_id)
amount int,
purchasing_price money,
seling_price money,
)



create table purchases(
purchase_id char(14),
customer char(10),
salesman_id varchar(10),
date datetime,
)

