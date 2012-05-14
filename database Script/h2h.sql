create database h2h

go

use h2h

--drop database h2h;

go

create table Product_Details
(
	prod_id  nvarchar(30) primary key,
	sku nvarchar(50),
	prod_title nvarchar(50) not null,
	prod_color nvarchar(10),
	prod_brand nvarchar(30) not null,
	prod_weight float(2,2) not null,
	prod_description nvarchar(5000) not null,
	prod_feature nvarchar(150),
	prod_tax_class_id int(10),
	prod_img1 image not null,
	prod_img2 image,
	prod_img3 image,
	prod_img4 image,
	prod_cat_name nvarchar(30), -- check(cat_name in('Mobiles','Home_Appliances','flowers'),
	prod_cat int,
	foreign key (prod_cat) references categories(cat_id),
	--prod_status int(1),
	meta_keywords_optional nvarchar(150),
	meta_description nvarchar(150),
	prod_added_by nvarchar(30) default super_admin,
	date_added datetime default getdate(),
	prod_Modified_by nvarchar(30),
	date_modified datetime default getdate()
)

go

create table tax_class
(
	tax_class_id int(5) primary key,
	tax_class_title varchar(50),
	tax_class_Description varchar(300),
	tax_class_by nvarchar(30) default super_admin,
	date_added datetime default getdate(),
	tax_class_Modified_by nvarchar(30),
	date_modified datetime default getdate()
)

go

create table tax_rates
(
	tax_rates_id int(10) primary key,
	tax_zone_id  int(10),
	tax_class_id int(10),
	tax_rates_priority int(10),
	tax_rate decimal(9,4),
	tax_rates_description varchar(300),
	tax_rates_added_by nvarchar(30) default super_admin,
	date_added datetime default getdate(),
	tax_rates_Modified_by nvarchar(30),
	date_modified datetime default getdate()
)



go

create table categories
(
	cat_id int primary key,
	name nvarchar(30), --check(name in('Mobiles','Home_Appliances','flowers')),
	brand nvarchar(50) not null,
	sub_category nvarchar(50) not null,
	--prod_id nvarchar(30),
	--FOREIGN KEY (prod_id)REFERENCES Product_Details(prod_id),
	cat_added_by nvarchar(30) default super_admin,
	date_added datetime default getdate(),
	cat_Modified_by nvarchar(30),
	date_modified datetime default getdate()
)



go

create table quantity 
(
	prod_id  nvarchar(30),
	stock int not null,
	FOREIGN KEY (prod_id)REFERENCES Product_Details(prod_id),
	quantity_added_by nvarchar(30) default super_admin,
	date_added datetime default getdate(),
	quantity_Modified_by nvarchar(30),
	date_modified datetime default getdate()
)

go

create table price
(
	prod_id nvarchar(30),
	m_price money  not null,
	O_price money  not null,
	discount_percent as ((m_price - O_price)* m_price/100),
	FOREIGN KEY (prod_id)REFERENCES Product_Details(prod_id),
	price_added_by nvarchar(30) default super_admin,
	date_added datetime default getdate(),
	price_Modified_by nvarchar(30),
	date_modified datetime default getdate()
)

go

create table cart
(



)

create table order_details
(
	order_id  nvarchar(30) primary key,
	prod_id nvarchar(30),
	order_date datetime default getdate(),
	total_amount money not null,
	quantities int  not null,
	FOREIGN KEY (prod_id)REFERENCES Product_Details(prod_id),
	order_details_added_by nvarchar(30) default super_admin,
	date_added datetime default getdate(),
	order_details_Modified_by nvarchar(30),
	date_modified datetime default getdate()
)

go

Create table returnRequest
(
	old_orderid nvarchar(30) not null,

)

go

create  table user_details
(
	userid  nvarchar(30) primary key,
	userame nvarchar(50),
	user_role nvarchar(30), -- check(user_role IN('Staff', 'User', 'Admin', 'sub-admin')),
	email_id nvarchar(50) not null,
	pass_word nvarchar(15) not null,
	user_details_added_by nvarchar(30) default super_admin,
	date_added datetime default getdate(),
	user_details_Modified_by nvarchar(30),
	date_modified datetime default getdate()
)

go

create table addresses
(
	userid nvarchar(30),
	name nvarchar(20),
	first_name nvarchar(20),
	last_name nvarchar(20),
	gender char(1) check(gender IN('M','F','O')),
	mobile_number bigint,
	address_ nvarchar(30),
	pincode bigint,
	tel_no bigint,
	city nvarchar(20),
	state_ nvarchar(30),
	country nvarchar(20),
	landmark nvarchar(30),
	FOREIGN KEY (userid)REFERENCES User_Details(userid),
	adds_added_by nvarchar(30) default super_admin,
	date_added datetime default getdate(),
	adds_Modified_by nvarchar(30),
	date_modified datetime default getdate()
) 

go

create table reviews
(
	review_id nvarchar(30) primary key,
	prod_id nvarchar(30),
	userid nvarchar(30),
	review_prod nvarchar(500),
	review_ratings int,
	FOREIGN KEY (prod_id)REFERENCES Product_Details(prod_id),
	FOREIGN KEY (userid)REFERENCES User_Details(userid),
	reviews_added_by nvarchar(30) default super_admin,
	date_added datetime default getdate(),
	reviews_Modified_by nvarchar(30),
	date_modified datetime default getdate()
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
	SpacialDisc_added_by nvarchar(30) default super_admin,
	date_added datetime default getdate(),
	SpacialDisc_Modified_by nvarchar(30),
	date_modified datetime default getdate()
)

create table country



Create table webEvents
(


)