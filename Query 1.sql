create schema krishna;
use krishna ;
select * from Mobile;

-- 1.Check Mobile features and Price List--
select phone_name,price from Mobile ;

-- 2.Find out the price of 5 most Expensive Phones --
select *from mobile
order by price desc 
limit 5;

-- 3.Find out the price of 5 cheapest Phones --
select * from Mobile
order by price 
limit 5;

-- 4.List of top 5 Samsung phones with price and all features --
select *from mobile where brands="Samsung" 
order by price desc 
limit 5;

-- 5. 5 most expensive android phones --
select * from Mobile where Operating_System_Type="Android"
order by price desc
limit 5;

-- 6. 5 cheapest Andriod Phones --
select * from Mobile where Operating_System_Type="Android"
order by price
limit 5;

-- 7. 5 most expensive IOS Phones --
select * from Mobile where Operating_System_Type="ios"
order by price desc
limit 5;

-- 8. 5 least expensive IOS Phones --
select * from Mobile where Operating_System_Type="ios"
order by price
limit 5;

-- 9.Top 5 Phones that Supports 5g --
select * from Mobile where 5G_Availability="YES"
order by price desc
limit 5;

-- 10.Total price of all the phones with Brand Name --
select brands,sum(price) from Mobile Group by Brands ;