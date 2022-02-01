#Ejercicio1.1
select nombre from articulos;

#Ejercicio1.2
select nombre, precio from articulos;

#Ejercicio1.3
select nombre, precio from articulos
where precio <= 200;

#Ejercicio1.4
select * from articulos
where precio between 60 AND 120;

#Ejercicio1.5
select nombre, precio * 166.386 as pesetas 
from articulos;

#Ejercicio1.6
select avg(precio) as precioMedio from articulos;

#Ejercicio1.7
select avg(precio) as precioMedio from articulos
where fabricante = 2;

#Ejercicio1.8
select count(nombre)from articulos
where precio >= 180;

#Ejercicio1.9
select nombre, precio from articulos
where precio >= 180
order by precio desc, nombre asc;

#Ejercicio1.10 join
select * from articulos
inner join fabricantes
on articulos.fabricante = fabricantes.codigo;

#Ejercicio 1.11
select articulos.*, fabricantes.nombre as nombre_fabricante
from articulos
inner join fabricantes
on articulos.fabricante = fabricantes.codigo;

#Ejercicio1.12
select avg(articulos.precio), fabricantes.codigo
from articulos
inner join fabricantes
on articulos.fabricante = fabricantes.codigo
group by fabricantes.codigo;

#Ejercicio1.13
select avg(articulos.precio), fabricantes.nombre
from articulos
inner join fabricantes
on articulos.fabricante = fabricantes.codigo
group by fabricantes.nombre;

#Ejercicio1.14
select avg(articulos.precio), fabricantes.nombre
from articulos
inner join fabricantes
on articulos.fabricante = fabricantes.codigo
group by fabricantes.nombre
having avg(articulos.precio) >= 150;

#Ejercicio1.15
select nombre, precio
from articulos
where precio = (select min(precio)
from articulos);

#Ejercicio1.16
select articulos.nombre, articulos.precio, fabricantes.nombre
from articulos
inner join fabricantes
on articulos.fabricante = fabricantes.codigo
and articulos.precio = 
(select max(articulos.precio)
 from articulos
 where articulos.fabricante = fabricantes.codigo);
 
#Ejercicio1.17
insert into articulos values 
(11, 'Altavoces', 70.0, 2);

#Ejercicio1.18
update articulos set nombre='Impresora Laser'
where codigo = 8;

#Ejercicio1.19
update articulos set precio = precio * 0.9;

#Ejercicio1.20
update articulos set precio = precio * 0.9
where precio >= 120;