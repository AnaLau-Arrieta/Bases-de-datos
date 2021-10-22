
-- 1). Cómo obtenemos todos los nombres y correos de nuestros clientes canadienses para una campaña?

select first_name, last_name, email, c3.country 
from customer c join address a using (address_id) join city c2 using (city_id) join country c3 using (country_id)
where country = 'Canada';


-- 2). Qué cliente ha rentado más de nuestra sección de adultos?

select c2.first_name , c2.last_name , count(r.rental_id) as tot
from category c join film_category fc using (category_id) join film f using (film_id) 
join inventory i using (film_id) join rental r using (inventory_id) join customer c2 using (customer_id)
where c."name" = 'Family'
group by c2.first_name , c2.last_name 
order by tot desc ;

--NO ENCONTRE LA CATEGORIA DE ADULTOS PERO TOME LA CATEGORIA DE FAMILIAR



-- 3). Qué películas son las más rentadas en todas nuestras stores?

select f.title, count(r.rental_id) as renta
from film f join inventory i using (film_id) join rental r using (inventory_id)
group by f.title 
order by renta desc ;


-- 4). Cuál es nuestro revenue por store?

select s.store_id, sum(p.amount) as ventas
from payment p join rental r using (rental_id)
join inventory i using (inventory_id)
join store s using (store_id)
group by s.store_id ;