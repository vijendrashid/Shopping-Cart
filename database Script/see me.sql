create database h2h

go

use h2h

go

--create table Product_Details
--(
--	prod_id  int primary key Identity(10000,1000),
--			--sub_category nvarchar(50),
--	sku nvarchar(50),
--	prod_title nvarchar(50)  null,
--	prod_weight_kgs decimal(8,5)  null,
--	meta_keywords_optional nvarchar(289),
--	meta_description nvarchar(289),
--	category varchar(30),
--	prod_brand varchar(40)  null,
--	prod_color varchar(30),
--	prod_features nvarchar(4000),
--	prod_description nvarchar(max)  null,
--	O_price money   null,
--	m_price money  null,
--	stock int null,
--	days_delivered int  null,
--	prod_img1 varchar(300)  null,
--	prod_img2 varchar(300),
--	prod_img3 varchar(300),
--	prod_img4 varchar(300),
--	prod_img5 varchar(300),
--	prod_img6 varchar(300),
--	prod_img7 varchar(300),
--	prod_img8 varchar(300),
--	prod_img9 varchar(300),
--	prod_img10 varchar(300),
--	prod_img11 varchar(300),
--	folder_images varchar(150),
--	discount_percent as ((m_price - O_price)/m_price*100),
--	prod_added_by nvarchar(30) default 'super_admin',
--	date_added datetime default getdate(),
--	prod_Modified_by nvarchar(30) default 'super_admin',
--	date_modified datetime default getdate()
--)



create table path
(
	id int Identity(10,2),
	imagePath varchar(300)
)

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
	prod_features nvarchar(max),
	prod_description nvarchar(max) not null,
	O_price money  not null,
	m_price money  null,
	stock int not null,
	days_delivered int not null,
	folder_images varchar(100) not null,
	prod_img1 varchar(300) not null,
	prod_img2 varchar(300),
	prod_img3 varchar(300),
	prod_img4 varchar(300),
	prod_img5 varchar(300),
	prod_img6 varchar(300),
	prod_img7 varchar(300),
	prod_img8 varchar(300),
	prod_img9 varchar(300),
	prod_img10 varchar(300),
	prod_img11 varchar(300),
	discount_percent as ((m_price - O_price)/m_price*100),
	prod_added_by nvarchar(30) default 'super_admin',
	date_added datetime default getdate(),
	prod_Modified_by nvarchar(30) default 'super_admin',
	date_modified datetime default getdate()
)

go

create table rating
(
	prod_id int,
	rates int
	)

CREATE TABLE CART
(
	




	/* Add Membership to app_data folder####
		aspnet_regsql -A all -C 
		"Data Source=Don-PC\SQLExpress;Integrated Security=True;User Instance=True" -d 
		"E:\Git Hub\Shopping-Cart\App_Data\mobileshop1234.mdf" */
	
	/*
This provider assumes the existence of the following Profiles table:

CREATE TABLE Profiles
(
  UniqueID IDENTITY NOT NULL PRIMARY KEY,
  UserName NVarchar(255) NOT NULL,
  ApplicationName NVarchar(255) NOT NULL,
  IsAnonymous BIT, 
  LastActivityDate DateTime,
  LastUpdatedDate DateTime,
)

Profile data is stored in a table named ProfileData. This table must
include a column named ProfileID. The remaining columns correspond
to the profile properties that you define in the Web.Config file.
  
  
CREATE TABLE ProfileData
{
  ProfileID INT,
  ProfileProp1,
  ProfileProp2,
  ProfileProp3, ...
}  
  
  
*/