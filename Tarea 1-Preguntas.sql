select  s.supplier_id, s.company_name, s.contact_name, s.contact_title 
from suppliers s 
where s.contact_title = 'Sales Representative';

select  s.supplier_id, s.company_name, s.contact_name, s.contact_title 
from suppliers s 
where s.contact_title != 'Marketing Manager';

select o.order_id, o.ship_country, o.ship_name 
from orders o 
where o.ship_country != 'USA';

select p.product_id ,p.product_name, p.category_id
from products p 
where p.category_id = 4;

select o.order_id, o.customer_id , o.ship_postal_code , o.ship_country 
from orders o 
where o.ship_country = 'France' or o.ship_country = 'Belgium';

select o.order_id, o.customer_id , o.ship_postal_code , o.ship_country 
from orders o 
where o.ship_country = 'Argentina' or o.ship_country = 'Mexico' or o.ship_country = 'Venezuela' or o.ship_country ='Brazil';

select o.order_id, o.customer_id , o.ship_postal_code , o.ship_country 
from orders o 
where o.ship_country != 'Argentina' and o.ship_country != 'Mexico' and o.ship_country != 'Venezuela' and o.ship_country != 'Brazil';

select 'e.first_name'n as Junto
from employees e;

create table pepe as select p.product_id , p.product_name , p.units_in_stock*p.unit_price as multip
from products p;

select sum(multip)
from pepe;

select c.country , count(*)
from customers c 
group by c.country; 






