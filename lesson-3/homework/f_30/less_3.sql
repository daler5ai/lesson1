create table PRODUCTS (productID int primary key,product_name varchar(50), price decimal(10,2))


select * from products


insert into products (productID, product_name, price)
values (1, 'laptop', 899.99)

insert into products (productID, product_name, price)
values (2, 'mouse', 58.99)

insert into products ( productID, product_name, price)
values (3, 'keyboard', 299.99)

select* from products


---NULL means a column can contain null values (empty/unknown/missing data). NOT NULL means a column must always have a value.
Example:

--Price DECIMAL(10,2) NULL - Price can be left empty
--Price DECIMAL(10,2) NOT NULL - Price must always be specifie

alter table products
add constraint product_name unique (product_name)

-- This query retrieves all products with a price greater than 50
--SELECT * FROM Products WHERE Price > 50

 create table categories (category_ID int primary key, category_name varchar(50) unique)

 select * from categories
