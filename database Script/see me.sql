create database h2h

go

use h2h

go

create table Product_Details
(
	prod_id  int primary key Identity(10000,1000),
			--sub_category nvarchar(50),
	sku varchar(50) unique,
	prod_title varchar(50) not null,
	prod_weight_kgs decimal(5,4) not null,
	meta_keywords_optional nvarchar(289),
	meta_description nvarchar(289),
	category varchar(30),
	prod_brand varchar(40) not null,
	prod_color varchar(30),
	prod_feature nvarchar(4000),
	prod_description nvarchar(max) not null,
	O_price money  not null,
	m_price money  null,
	stock int not null,
	days_delivered int not null,
	prod_img1 varbinary(MAX) not null,
	prod_img2 varbinary(MAX),
	prod_img3 varbinary(MAX),
	prod_img4 varbinary(MAX),
	prod_img5 varbinary(MAX),
	prod_img6 varbinary(MAX),
	prod_img7 varbinary(MAX),
	prod_img8 varbinary(MAX),
	prod_img9 varbinary(MAX),
	prod_img10 varbinary(MAX),
	prod_img11 varbinary(MAX),
	discount_percent as ((m_price - O_price)/m_price*100)
)