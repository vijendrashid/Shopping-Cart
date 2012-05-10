create database h2h

go

use h2h

--drop database h2h;

go

create table Product_Details
(
prod_id  nvarchar(30) primary key,
sku nvarchar(50
prod_title nvarchar(50) not null,
prod_color nvarchar(10),
prod_brand nvarchar(30) not null,
prod_weight float(2,2) not null,
prod_description nvarchar(max) not null,
prod_feature nvarchar(150),
prod_img1 image,
prod_img2 image,
prod_img3 image,
prod_img4 image,
prod_cat_name nvarchar(30) check(cat_name in('Mobiles','Home_Appliances','flowers'),
prod_Status ,
prod_Added_by nvarchar(30),
prod_Modified_by nvarchar(30),
prod_Deleted_by nvarchar(30)
)

go

create table Category
(
cat_id int primary key,
name nvarchar(30) check(name in('Mobiles','Home_Appliances','flowers')),
brand nvarchar(50) not null,
sub_category nvarchar(50) not null,
prod_id nvarchar(30),
FOREIGN KEY (prod_id)REFERENCES Product_Details(prod_id),
prod_Added_by nvarchar(30),
prod_Modified_by nvarchar(30),
prod_Deleted_by nvarchar(30)
)



go

create table Quantity 
(
prod_id  nvarchar(30),
stock int not null,
FOREIGN KEY (prod_id)REFERENCES Product_Details(prod_id),
prod_Added_by nvarchar(30),
prod_Modified_by nvarchar(30),
prod_Deleted_by nvarchar(30)
)

go

create table price
(
prod_id nvarchar(30),
m_price money  not null,
O_price money  not null,
discount_percent as ((m_price - O_price)* m_price/100),
FOREIGN KEY (prod_id)REFERENCES Product_Details(prod_id),
prod_Added_by nvarchar(30),
prod_Modified_by nvarchar(30),
prod_Deleted_by nvarchar(30)
)

go

create table cart
(
userid nva
)

create table Order_details
(
order_id  nvarchar(30) primary key,
prod_id nvarchar(30),
order_date datetime default getdate(),
total_amount money not null,
quantities int  not null,
FOREIGN KEY (prod_id)REFERENCES Product_Details(prod_id),
prod_Added_by nvarchar(30),
prod_Modified_by nvarchar(30),
prod_Deleted_by nvarchar(30)
)

go

create  table User_Details
(
userid  nvarchar(30) primary key,
userame nvarchar(50),
user_role nvarchar(30) check(user_role IN('Staff', 'User', 'Admin', 'sub-admin')),
email_id nvarchar(50) not null,
password nvarchar(15) not null,
prod_Added_by nvarchar(30),
prod_Modified_by nvarchar(30),
prod_Deleted_by nvarchar(30)
)

go

create table Addresses
(
userid nvarchar(30),
name nvarchar(20),
first_name nvarchar(20),
last_name nvarchar(20),
gender char(1) check(gender IN('M','F','O')),
mobile_number bigint,
address nvarchar(30),
pincode bigint,
tel_no bigint,
city nvarchar(20),
state nvarchar(30),
country nvarchar(20),
landmark nvarchar(30),
FOREIGN KEY (userid)REFERENCES User_Details(userid),
prod_Added_by nvarchar(30),
prod_Modified_by nvarchar(30),
prod_Deleted_by nvarchar(30)
) 

go

create table Reviews
(
review_id nvarchar(30) primary key,
prod_id nvarchar(30),
userid nvarchar(30),
review_prod nvarchar(500),
ratings int,
FOREIGN KEY (prod_id)REFERENCES Product_Details(prod_id),
FOREIGN KEY (userid)REFERENCES User_Details(userid),
prod_Added_by nvarchar(30),
prod_Modified_by nvarchar(30),
prod_Deleted_by nvarchar(30)
)

create table SpacialDiscountOnAll
(
id int,
name varchar(300),
discountTypeId int,
usePercentage bit,
discountPercentage decimal(18,4),
discountAmount decimal(18,4),
startDate datetime default getdate(),
endDate datetime default getdate(),
RequiresCouponCode bit,
CouponCode nvarchar(100),
DiscountLimitationId int,
LimitationTimes int,
prod_Added_by nvarchar(30),
prod_Modified_by nvarchar(30),
prod_Deleted_by nvarchar(30)
)

Create table returnRequest
(

)

Create table webEvents
(

)