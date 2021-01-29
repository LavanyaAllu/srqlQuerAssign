use WFA3DotNet

--1 Create Table

create table product2(
productid int not null primary key identity(1,1),
Description varchar(30) not null unique,
setqty int not null
check (setqty=1 or setqty=5 or setqty=10)
default 1,
rate decimal(10,2)
check (rate >=51 and rate<=5000))


--2 Insert 20 Records

insert into product2 values('air conditioner',1,3000)
insert into product2 values('washing machine',1,2789)
insert into product2 values('refrigirator',5,1675)
insert into product2 values('micro oven',5,2000)
insert into product2 values('television',10,1000.67)
insert into product2 values('cooler',10,2000.67)
insert into product2 values('water heater',5,2000)
insert into product2 values('vaccum cleaner',1,3000)
insert into product2 values('mixer',10,2000)
insert into product2 values('laptop',1,3000)
insert into product2 values('blender',5,2000)
insert into product2 values('dyer',5,2000)
insert into product2 values('dish washer',1,1000)
insert into product2 values('lamp',5,1000)
insert into product2 values('coffe maker',5,2000)
insert into product2 values('toaster',10,3000)
insert into product2 values('water puirifier',1,2000)
insert into product2 values('dryer',10,3000)
insert into product2 values('sperkers',1,3000)
insert into product2 values('electric fan',10,2000)


select * from product2

--3 update all the rates with 10% rate hike
update product2 set rate=rate*0.1 from product2

--4 delete last record by providing productid
delete from product2 where productid=20

--5 Add the table and add the follwing column
alter table Product2 add  MarginCode char(1) 
CHECK (MarginCode='A' OR MarginCode='B' OR MarginCode=null)

--6 update few records to set margincode to A and some record to B

update product2
set MarginCode='A'
where productid<7

update product2
set MarginCode='B'
where productid>11

--7 Update all the SetQty to 10 for all Items which have MarginCode A and whose original SetQty is 1.
update product2 set setqty=10 where MarginCode='A' 
update product2 set setqty=10 where setqty=1








