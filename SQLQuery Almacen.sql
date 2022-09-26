--Crear base de datos
--Nombre de la base de datos en mayúscula
create database BDAlmacen
go
--poner en uso la bd
--Columnas = campos y Filas = Registros
--Clave principal = identificador único. No se puede repetir.
--Tabla = conjunto de registros
use BDAlmacen
go 
--Crear tabla 
create table Producto(
	idProd int primary key not null,
	nombreProd nvarchar(60) not null,
	precioProd numeric(18, 2) not null,
	existenciaProd int not null default 0,
	existMinProd int not null default 0,
	estadoProd bit default 'true'
)
go
--CRUD
--Crear o insertar registro
/*Comando Insert into nombreTable(campo1, campo2, ..., campoN)
values(dato1, dato2, ..., datoN)*/
insert into Producto(idProd,nombreProd,precioProd,existenciaProd,existMinProd)
values(1, 'Café', 85,5,3)

--Read Seect o Ver 
/* select * from nombreTabla*/
Select *from Producto
go

--Insertar más registros
insert into Producto(idProd, nombreProd, precioProd, existenciaProd, existMinProd)
values(2, 'Limon', 5, 10, 5),	
	  (3, 'Arroz Libra', 25, 200, 100),
	  (4, 'Teclado', 10, 10, 3)

--Mostrar registro por alias
select idProd as N'Código', nombreProd as N'Producto', precioProd as N'Precio', existenciaProd as N'Existencia Actual', existMinProd as 'Mínimo' from Producto

--Update = Actualizar
update Producto set nombreProd='Teclado gamer'
where idProd = 4

--Delet = Eliminar
delete from Producto where idProd = 2