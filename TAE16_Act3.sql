#Ejercicio3.1
select codigo as almacen from almacenes;

#Ejercicio3.2
select numreferencia as caja, valor from cajas
where valor > 150;

#Ejercicio3.3
select contenido as tipoContenido from cajas
group by contenido;

#Ejercicio3.4
select avg(valor) as valorMedioTodasLasCajas 
from cajas;

#Ejercicio3.5
select almacenes.codigo as almacen, avg(cajas.valor) as valorMedio
from cajas
join almacenes 
on cajas.almacen = almacenes.codigo
group by almacenes.codigo;

#Ejercicio3.6
select almacenes.codigo as almacen, avg(cajas.valor) as valorMedio
from cajas
join almacenes 
on cajas.almacen = almacenes.codigo
group by almacenes.codigo
having avg(cajas.valor) > 150;

#Ejercicio3.7
select cajas.numreferencia, almacenes.lugar
from cajas
join almacenes 
on cajas.almacen = almacenes.codigo;

#Ejercicio3.8
select almacenes.codigo as almacen, count(cajas.numreferencia) as numCajas
from cajas
join almacenes 
on cajas.almacen = almacenes.codigo
group by almacenes.codigo;

#Ejercicio3.9
select almacenes.codigo as almacenSaturado
from almacenes
where capacidad < (
select count(cajas.numreferencia) from cajas
where cajas.almacen = almacenes.codigo);

#Ejercicio3.10
select cajas.numreferencia, almacenes.lugar from cajas
join almacenes 
on cajas.almacen = almacenes.codigo
where almacenes.lugar = 'Bilbao';

#Ejercicio3.11
insert into almacenes values 
(6, 'Barcelona', 3);

#Ejercicio3.12
insert into cajas  values 
('H5RT', 'Papel', 200, 2);

#Ejercicio3.13
update cajas set valor = valor * 0.85;

#Ejercicio3.14
update cajas set valor = valor * 0.80
where cajas.valor > avg(cajas.valor);

#Ejercicio3.15
delete from cajas where cajas.valor < 100;

#Ejercicio3.16
delete from cajas
where cajas.almacen in
(select almacenes.codigo from almacenes
where almacenes.capacidad < 
(select count(cajas.numreferencia) from cajas where cajas.almacen = almacenes.codigo));