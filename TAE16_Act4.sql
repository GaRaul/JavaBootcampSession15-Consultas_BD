use PeliculasYSalas;

# Ejercicio 4.1
select Nombre 
from Peliculas;

# Ejercicio 4.2
select distinct CalificacionEdad 
from Peliculas;

# Ejercicio 4.3
select * 
from Peliculas
where CalificacionEdad = null;

# Ejercicio 4.4
select * 
from Salas
where Pelicula = null;

# Ejercicio 4.5
select * 
from Salas inner join Peliculas on Salas.Pelicula = Peliculas.Codigo; 

# Ejercicio 4.6
select * 
from Peliculas inner join Salas on Peliculas.Codigo = Salas.Pelicula; 

# Ejercicio 4.7
select Peliculas.Nombre 
from Salas right join Peliculas on Salas.Pelicula = Peliculas.Codigo
where Salas.Pelicula is null;

# Ejercicio 4.8
insert into Peliculas (Nombre, CalificacionEdad) values
('Uno, Dos, Tres', 7);

# Ejercicio 4.9
insert into Peliculas (Nombre) values
('Habitantes');

update Peliculas set CalificacionEdad = 13
where Peliculas.CalificacionEdad is null;

# Ejercicio 4.10
insert into Peliculas (Nombre) values
('Habitantes 3');
insert into Peliculas (Nombre, CalificacionEdad) values
('Habitantes 3', 0);

# No funciona, en internet dice que es asi
delete from Salas 
where Pelicula in (
	select Codigo from Peliculas where CalificacionEdad is null or CalificacionEdad = 0);

select * from Peliculas;