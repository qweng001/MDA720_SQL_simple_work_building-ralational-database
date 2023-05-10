/* all table info are randomly generated*/
/* Weng /*
create database MDA720HW2
;
/*  TABLE 1 */ 
use MDA720HW2;
DROP TABLE IF EXISTS `customer`;
create table customer (
cust_ID int(2) NOT NULL,
cust_Name varchar(40) NOT NULL,
cust_address varchar(100) NOT NULL,
cust_contact varchar(40) NOT NULL,
PRIMARY KEY (cust_ID))
;
/* when cust_address has more characters */
/* ALTER TABLE customer MODIFY COLUMN cust_address VARCHAR(100); */

insert into customer(cust_ID, cust_Name,cust_address,cust_contact) 
values (1, 'Jennifer Galvan', '47 Buttonwood Avenue
Fenton, MI 48430','(253) 391-1575')
;
insert into customer(cust_ID, cust_Name,cust_address,cust_contact) 
values (2, 'Eva Collier', '19 E. Ocean Road
Owings Mills, MD 21117','(443) 787-1644')
;
insert into customer(cust_ID, cust_Name,cust_address,cust_contact) 
values (3, 'Keaton Perkins', '169 Corona Lane
Malvern, PA 19355','(435) 791-5531')
;
insert into customer(cust_ID, cust_Name,cust_address,cust_contact) 
values (4, 'Leroy Lindsay', '196 Arrowhead Street
Camden, NJ 08105','(482) 713-6070')
;
insert into customer(cust_ID, cust_Name,cust_address,cust_contact) 
values (5, 'Aleena Duran', '696 San Pablo Ave.
Chippewa Falls, WI 54729','(846) 683-9353')
;
insert into customer(cust_ID, cust_Name,cust_address,cust_contact) 
values (6, 'Kiara Zamora', '68 Princeton Ave.
Milford, MA 01757','(284) 758-7869')
;
insert into customer(cust_ID, cust_Name,cust_address,cust_contact) 
values (7, 'Zubair May', '828 SE. Trenton Drive
Oak Park, MI 48237','(680) 808-2627')
;
insert into customer(cust_ID, cust_Name,cust_address,cust_contact) 
values (8, 'Maddie Turner', '575 Maiden Avenue
Easton, PA 18042','(515) 398-3698')
;
insert into customer(cust_ID, cust_Name,cust_address,cust_contact) 
values (9, 'Austin Pruitt', '69 Harvard St.
Huntley, IL 60142','(295) 948-9155')
;
insert into customer(cust_ID, cust_Name,cust_address,cust_contact) 
values (10, 'Iestyn Allen', '286 Rockville Dr.
Potomac, MD 20854','(619) 477-4984')
;
-- select * from customer
;
/* 10 random generated fake names
Jennifer Galvan
Eva Collier
Keaton Perkins
Leroy Lindsay
Aleena Duran
Kiara Zamora
Zubair May
Maddie Turner
Austin Pruitt
Iestyn Allen
;
*/
/* 10 random generated fake addresses

47 Buttonwood Avenue
Fenton, MI 48430
19 E. Ocean Road
Owings Mills, MD 21117
169 Corona Lane
Malvern, PA 19355
196 Arrowhead Street
Camden, NJ 08105
696 San Pablo Ave.
Chippewa Falls, WI 54729
68 Princeton Ave.
Milford, MA 01757
828 SE. Trenton Drive
Oak Park, MI 48237
575 Maiden Avenue
Easton, PA 18042
69 Harvard St.
Huntley, IL 60142
286 Rockville Dr.
Potomac, MD 20854
;
*/
/* 10 random generated fake numbers
(253) 391-1575
(443) 787-1644
(435) 791-5531
(482) 713-6070
(846) 683-9353
(284) 758-7869
(680) 808-2627
(515) 398-3698
(295) 948-9155
(619) 477-4984 */
;
/*  TABLE 2 */ 
DROP TABLE IF EXISTS `orders`;
create table orders (
cust_ID int(2) NOT NULL,
orderDate varchar(40),
order_ID varchar(40),
itemStatus varchar(40), /* status including:  pending, awaits_payment,
			awaiting_pickup,completed, shipped,cancelled, refunded */
primary key (order_ID),
foreign key (cust_ID) REFERENCES customer(cust_ID))
;
-- select * from orders
-- ;

insert into orders(cust_ID, orderDate,order_ID,itemStatus) 
values (1,  '1-1-2022','1001','completed')
;
insert into orders(cust_ID, orderDate,order_ID,itemStatus) 
values (2,  '1-10-2022','1002','awaiting pickup')
;
insert into orders(cust_ID, orderDate,order_ID,itemStatus) 
values (3,  '3-31-2022','1003','shipped')
;
insert into orders(cust_ID, orderDate,order_ID,itemStatus) 
values (4,  '4-20-2022','1004','shipped')
;
insert into orders(cust_ID, orderDate,order_ID,itemStatus) 
values (5,  '5-1-2022','1005','cancelled')
;
insert into orders(cust_ID, orderDate,order_ID,itemStatus) 
values (6,  '6-17-2022','1006','completed')
;
insert into orders(cust_ID, orderDate,order_ID,itemStatus) 
values (7,  '6-21-2022','1007','completed')
;
insert into orders(cust_ID, orderDate,order_ID,itemStatus) 
values (8,  '7-1-2022','1008','shipped')
;
insert into orders(cust_ID, orderDate,order_ID,itemStatus) 
values (9,  '8-1-2022','1009','refunded')
;
insert into orders(cust_ID, orderDate,order_ID,itemStatus) 
values (10, '8-21-2022','1010','shipped')
;
-- select * from customer
-- ;
/* TABLE 3 */
DROP TABLE IF EXISTS `product_Detail`;
CREATE TABLE product_Detail (
product_ID int(40) NOT NULL ,
product_Name varchar(50) NOT NULL,
product_Price DECIMAL(5,2) NOT NULL,
product_Description varchar(200) NOT NULL,
primary key (product_ID)
);
;
select * from product_detail
;
/*alter table product_detail
modify product_price decimal(5,2)
; */
insert into product_Detail(product_ID, product_Name,product_Price,product_Description) 
values (1111,'Stainless Steel Water Bottle',25.99,'A 20-ounce water bottle made from durable stainless steel.')
;
insert into product_Detail(product_ID, product_Name,product_Price,product_Description) 
values (2222,'Bluetooth Wireless Earbuds',49.99,'Wireless earbuds with noise-cancelling feature.')
;
insert into product_Detail(product_ID, product_Name,product_Price,product_Description) 
values (3333,'Cotton T-Shirt',19.99,'Soft and eco-friendly t-shirt made from 100% organic cotton.')
;
insert into product_Detail(product_ID, product_Name,product_Price,product_Description) 
values (4444,'Reusable Grocery Tote Bag',19.99,'Durable and lightweight tote bag for groceries and shopping.')
;
insert into product_Detail(product_ID, product_Name,product_Price,product_Description) 
values (5555,'Solar Powered Portable Charger',29.99,'10,000mAh solar-powered portable charger for phones and tablets.')
;
insert into product_Detail(product_ID, product_Name,product_Price,product_Description) 
values (6666,'Non-Stick Ceramic Cookware Set',79.99,'0-piece cookware set with durable, scratch-resistant surface.')
;
insert into product_Detail(product_ID, product_Name,product_Price,product_Description) 
values (7777,'Memory Foam Pillow',35.99,'Memory foam pillow for comfortable and restful sleep.')
;
insert into product_Detail(product_ID, product_Name,product_Price,product_Description) 
values (8888,'Adjustable Dumbbell Set ',125.99,'Compact dumbbell set with weight range of 5-52.5 pounds.')
;
insert into product_Detail(product_ID, product_Name,product_Price,product_Description) 
values (9999,'Air Fryer',89.99,'Compact air fryer for healthy and delicious meals.')
;
insert into product_Detail(product_ID, product_Name,product_Price,product_Description) 
values (2525,'Smart Watch',99.99,'Multi-feature smart watch for an active lifestyle.')
;


/*  TABLE 4 */ 
DROP TABLE IF EXISTS `items`;
create table items (
item_ID varchar(40) NOT NULL,
order_ID varchar(40) NOT NULL,
product_ID int(40) NOT NULL ,
itemQuantity int(2)NOT NULL,
product_price decimal (5,2)NOT NULL,
itemStatus varchar(40),
primary key (item_ID),
-- ALTER TABLE items
-- ADD FOREIGN KEY (itemStatus) REFERENCES orders(itemStatus);
foreign key (order_ID) REFERENCES orders(order_ID),
foreign key (product_ID) REFERENCES product_Detail(product_ID)
)
;
/* alter table items
change price product_price decimal (5,2)
;
*/ 
insert into items(item_ID, order_ID, product_ID, itemQuantity,product_price,itemStatus) 
values ('8901', '1001',1111,01,25.99,'completed')
;
insert into items(item_ID, order_ID, product_ID, itemQuantity,product_price,itemStatus) 
values ('5684', '1002',2222,01,49.99,'awaiting pickup')
;
insert into items(item_ID, order_ID, product_ID, itemQuantity,product_price,itemStatus) 
values ('8321', '1003',3333,01,19.99,'shipped')
;
insert into items(item_ID, order_ID, product_ID, itemQuantity,product_price,itemStatus) 
values ('9754', '1004',4444,01,19.99,'shipped')
;
insert into items(item_ID, order_ID, product_ID, itemQuantity,product_price,itemStatus) 
values ('7530', '1005',5555,01,29.99,'cancelled')
;
insert into items(item_ID, order_ID, product_ID, itemQuantity,product_price,itemStatus) 
values ('9206', '1006',6666,01,79.99,'completed')
;
insert into items(item_ID, order_ID, product_ID, itemQuantity,product_price,itemStatus) 
values ('6483', '1007',7777,01,35.99,'completed')
;
insert into items(item_ID, order_ID, product_ID, itemQuantity,product_price,itemStatus) 
values ('6788', '1008',8888,01,125.99,'shipped')
;
insert into items(item_ID, order_ID, product_ID, itemQuantity,product_price,itemStatus) 
values ('5432', '1009',9999,01,89.99,'refunded')
;
insert into items(item_ID, order_ID, product_ID, itemQuantity,product_price,itemStatus) 
values ('2889', '1010',2525,01,99.99,'shipped')
;


-- select * from orders
-- ;

-- show tables
-- ;
-- use MDA720HW2
-- ;
-- show tables
-- ;
-- select * from customer
-- ;
-- select * from items
-- ;
-- select * from orders
-- ;
-- select * from product_detail
-- ;
/*                                            Join the tables                                      */
Select *
from customer
JOIN orders ON customer.cust_ID = orders.cust_ID
JOIN items ON orders.order_ID = items.order_ID
JOIN product_detail ON items.product_ID = product_detail.product_ID
GROUP BY customer.cust_ID;


SELECT *
FROM city
JOIN country ON city.countrycode = country.code
JOIN countrylanguage ON country.code = countrylanguage.countrycode
GROUP BY city.countrycode;



# showing all the table names
SELECT column_name
FROM information_schema.columns
WHERE table_schema = 'world';
