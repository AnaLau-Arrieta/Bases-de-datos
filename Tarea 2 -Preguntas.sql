

--Cuales pagos no son del cliente con ID 5, y cuyo monto sea mayor a 8 o cuya fecha sea 23 de Agosto de 2005?

select *
from payment p
where (p.customer_id !=5 and p.amount > 8)
or p.payment_date between '2005-08-23 00:00:00' and '2005-08-23 23:53:53';


--Cuales pagos son del cliente con ID 5 y cuyo monto no sea mayor a 6 y su fecha tampoco sea del 19 de Junio de 2005?

select *
from payment p 
where p.customer_id =5 
and p.amount < 6
and p.payment_date not between '2005-06-19 00:00:00' and '2005-06-19 23:59:59';

--Cuales pagos tienen el monto 1.98, 7.98 o 9.98?

select *
from payment p 
where p.amount = 1.98
or p.amount = 7.98
or p.amount = 9.98;

--Cual es la suma total pagada por los clientes que tienen una letra A en la segunda posición de su apellido 
--y una W en cualquier lugar después de la A?







--Crear tabla de emials

create table emails2 (
  id_email numeric (2,0) primary key,
  nombre varchar (45) NOT NULL ,
  email varchar(100) NOT null
);

insert into emails2
(id_email, nombre, email) 
values 
('1','Wanda Maximoff', 'wanda.maximoff@avengers.org'),
('2','Pietro Maximoff',	'pietro@mail.sokovia.ru'),
('3', 'Erik Lensherr',	'fuck_you_charles@brotherhood.of.evil.mutants.space'),
('4','Charles Xavier',	'i.am.secretely.filled.with.hubris@xavier-school-4-gifted-youngste.'),
('5', 'Anthony Edward Stark', 'iamironman@avengers.gov'),
('6', 'Steve Rogers', 'americas_ass@anti_avengers'),
('7', 'The Vision', 'vis@westview.sword.gov'),
('8', 'Clint Barton',	'bul@lse.ye'),
('9', 'Natasja Romanov','blackwidow@kgb.ru'),
('10', 'Thor','god_of_thunder-^_^@royalty.asgard.gov'),
('11', 'Logan',	'wolverine@cyclops_is_a_jerk.com'),
('12', 'Ororo Monroe', 'ororo@weather.co'),
('13', 'Scott Summers', 'o@x'),
('14', 'Nathan Summers', 'cable@xfact.or'),
('15', 'Groot',	'iamgroot@asgardiansofthegalaxyledbythor.quillsux'),
('16', 'Nebula', 'idonthaveelektras@complex.thanos'),
('17', 'Gamora', 'thefiercestwomaninthegalaxy@thanos.'),
('18', 'Rocket', 'shhhhhhhh@darknet.ru');



select *
from emails2 ;

--Regresa los emails invalidos

select *
from emails2 
where email not like '%@%._%' or email like '%god%';

