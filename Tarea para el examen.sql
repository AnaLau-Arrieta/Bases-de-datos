
/* Pregunta 1*/ 
select e.first_name , e.last_name , age(now(), e.birth_date )
from employees e ;


/* Pregunta 2*/
select c.contact_name, o.customer_id ,max( o.order_date )  as Ultimafecha
from orders o left join customers c 
on o.customer_id =c.customer_id 
group by o.customer_id, c.contact_name ;


/* Pregunta 3*/
select count(c.customer_id), contact_title 
from customers c
group by c.contact_title ;



/* Pregunta 4 */
select c.category_name , sum(p.units_in_stock)
from categories c left join products p
on c.category_id = p.product_id 
group by p.units_in_stock , c.category_id, p.product_id ;



/* Pregunta 5 */


/* Pregunta 6 ESTA MAL */
select od.order_id ,max(od.quantity) , o.ship_city , o.ship_country 
from order_details od left join orders o
on od.order_id = o.order_id
group by od.order_id, o.ship_city , o.ship_country ;


/* Pregunta 7*/
select c.customer_id , c.contact_name,  
from customers c left join orders o ;

select *
from orders o ;


/* Pregunta 8*/

select e.first_name , e.last_name 
from employees e 


/* Pregunta 9*/


/* Pregunta 10*/

