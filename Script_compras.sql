create database prueba;

use prueba;


create table paises(
	id int primary key auto_increment,
	Nombre varchar(50) unique
);

insert into paises values(null, "Colombia");

create table ciudades(
	id int primary key auto_increment,
	Nombre varchar(50),
	id_pais int,
	foreign key (id_pais)
	references paises(id)
	on delete cascade
	on update cascade
);

insert into ciudades values
(null, "Barranquilla", 1),
(null, "Bogotá", 1),
(null, "Medellín", 1),
(null, "Cali", 1),
(null, "Bucaramanga", 1);


create table proveedores(
	id int primary key auto_increment,
	Nombre varchar(50),
	Nit varchar(50),
	Email varchar(50) unique,
	id_ciudad int,
	foreign key (id_ciudad)
	references ciudades(id)
	on delete restrict
	on update cascade
);

insert into proveedores values
(null, "Ferreteria Torres S.A.S.", "900123456-1","ferreteria.torres@gmail.com", 2),
(null, "Tecno Partes Ltda.", "700345678-5","tecnopartes@empresa.com", 2),
(null, "Suministros Industriales Del Norte", "901234567-4","suministros.norte@empresa.co", 1),
(null, "Distribuidora Electronica Medellin", "800987654-2","dist_electronica@gmail.com", 3),
(null, "Metales y Aleaciones S.A", "890654321-6",null, 5),
(null, "Plastiflex Cali LTDA.", "860456789-3","plastiflex@cali.com", 4);

create table administradores(

	id int primary key auto_increment,
    Nombre  varchar(50),
    Apellido varchar(50)

);

insert into administradores values
(null, "María", "Pérez"),
(null, "Andrés", "Gómez"),
(null, "Carlos", "Rodríguez"),
(null, "Luisa", "Martínez");

create table bodegas(
	id int primary key auto_increment,
	Nombre varchar(50),
	id_ciudad int,
	foreign key (id_ciudad)
	references ciudades(id)
	on delete restrict
	on update cascade,
	Direccion varchar(50),
	id_nombre_administrador int,
    foreign key (id_nombre_administrador)
    references administradores(id)
    on delete restrict
    on update cascade
);

insert into bodegas values
(null, "Bodega Norte Barranquilla", 1, "Calle 80 # 43-20", 1),
(null, "Bodega Sur Cali", 4, "Av. Americas #5-30", 2),
(null, "Bodega Central Bogotá", 2, "Carrera 30 #15-40", 3),
(null, "Bodega Medellín", 3, "Carrera 50 # 45-67", 4);

create table categorias(
	id int primary key auto_increment,
	Nombre varchar(50)
);

insert into categorias values
(null, "Eléctrico"),
(null, "Plomería"),
(null, "Metales"),
(null, "Construcción"),
(null, "Pinturas"),
(null, "Electrónica"),
(null, "Plásticos"), 
(null, "Materiales"),
(null, "Aluminio"),
(null, "Ferretería");


create table subcategorias(
	id int primary key auto_increment,
	Nombre varchar(50),
	id_categoria int,
	foreign key (id_categoria)
	references categorias(id)
    on delete restrict
    on update cascade
);

insert into subcategorias values
(null, "Controles", 1),
(null, "Accesorios", 2),
(null, "Interruptores", 6),
(null, "Tuberías", 7),
(null, "Aglomerantes", 4),
(null, "Tornillos", 10),
(null, "Perfiles", 3),
(null, "Acabados", 5),
(null, "Pinturas Base Agua", 5),
(null, "Válvulas", 2),
(null, "Cementos", 4),
(null, "Tubos", 7),
(null, "Redes", 6),
(null, "Cables", 6),
(null, "Fijaciones", 10),
(null, "Estructuras", 9);

create table unidades_de_medida(
	id int primary key auto_increment,
	Nombre varchar(50),
	Abreviatura varchar(5)
);

insert into unidades_de_medida values
(null, "Unidad", "und"),
(null, "Metros", "mts"),
(null, "Galón", "gal"),
(null, "Mililitros", "ml"),
(null, "Bolsa", "bg"),
(null, "Bulto", "bto");

create table productos(
	id int primary key auto_increment,
	Nombre varchar(50),
    Descripción varchar(200),
	Precio_unitario decimal,
	id_unidad_de_medida int,
	foreign key (id_unidad_de_medida)
	references unidades_de_medida(id)
	on delete restrict
	on update cascade,
	Stock int,
	id_categoria int,
	foreign key (id_categoria)
	references categorias(id)
	on delete restrict
	on update cascade
);

insert into productos values
(null, "Interruptor Simple","Interruptor Eléctrico Sencillo 110V", 8500, 1, 371, 1),
(null, "Cemento Gris 50kg", "Cemento Portland 50 KG",28000, 6, 95, 8),
(null, "Válvula De Paso 1/2 Pulgada", "Válvula de paso en bronce 1/2", 15000, 1, 490, 2),
(null, "Pintura Base Agua Blanca", "Pintura caucho blanca", 35500, 3, 218, 5),
(null, "Tornillo Hexagonal 1/2 Pulgada", "Tornillo metálico estructural", 1200, 1, 472, 10),
(null, "Perfil De Aluminio 1 Pulgada x 1 Pulgada", "Perfil aluminio cuadrado", 21000, 2, 69, 9),
(null, "Cable UTP Categoría 6", "Cable red Cat 6", 4500, 2, 270, 6),
(null, "Tubo PVC 4 Pulgadas", "Tubo PVC sanitario 4 Pulgadas", 8800, 2, 258, 7);


create table compras(
	id int primary key auto_increment,
	Fecha_venta date,
	id_proveedor int,
	foreign key (id_proveedor)
	references proveedores(id)
	on delete restrict
	on update cascade,
	Monto_total decimal
);

insert into compras values
(null, '2023-07-12', 2, 1564000),
(null, '2023-08-25', 3, 990000),
(null, '2023-10-04', 1, 1156000),
(null, '2024-04-27', 4, 720900),
(null, '2024-06-07', 5, 814000),
(null, '2024-06-17', 2, 4968000),
(null, '2023-06-16', 4, 1308300),
(null, '2023-07-18', 3, 1174800),
(null, '2023-03-03', 1, 2016000),
(null, '2024-11-04', 3, 3857000),
(null, '2024-04-07', 3, 30000),
(null, '2024-08-24', 4, 6638500),
(null, '2023-12-12', 2, 1665000),
(null, '2023-11-28', 2, 1440000),
(null, '2023-11-10', 4, 884000),
(null, '2023-05-18', 2, 999000),
(null, '2023-09-17', 3, 4620000),
(null, '2024-05-06', 1, 6825000),
(null, '2024-11-08', 6, 1434400),
(null, '2023-03-06', 6, 4366500),
(null, '2024-05-31', 2, 799000),
(null, '2023-02-01', 2, 10800),
(null, '2023-05-24', 5, 5180000),
(null, '2023-04-02', 1, 124600),
(null, '2024-05-19', 6, 4732000),
(null, '2024-04-30', 2, 4987500),
(null, '2023-09-12', 3, 1420000),
(null, '2023-04-28', 3, 1610900),
(null, '2024-06-20', 4, 596300),
(null, '2024-12-02', 1, 1173000),
(null, '2024-10-16', 5, 328500),
(null, '2023-02-28', 2, 1335000),
(null, '2023-05-21', 2, 175500),
(null, '2024-07-16', 1, 1953000),
(null, '2024-05-13', 4, 223200),
(null, '2024-10-05', 5, 2505000),
(null, '2024-06-03', 3, 3163500),
(null, '2023-03-23', 4, 1606500),
(null, '2023-07-18', 4, 1045500),
(null, '2023-12-08', 2, 511500),
(null, '2023-06-03', 3, 875600),
(null, '2023-11-14', 1, 357000),
(null, '2023-03-30', 3, 4176000),
(null, '2024-10-28', 3, 73200),
(null, '2024-02-13', 2, 6887000),
(null, '2023-08-31', 5, 111600),
(null, '2024-02-14', 3, 1029000),
(null, '2024-03-26', 2, 5915000),
(null, '2024-01-10', 4, 168000),
(null, '2023-01-26', 5, 3397500),
(null, '2023-03-09', 2, 2765000),
(null, '2023-12-03', 1, 374000),
(null, '2023-04-27', 2, 562500),
(null, '2023-03-04', 1, 782000),
(null, '2023-05-02', 1, 301500),
(null, '2024-03-28', 4, 240000),
(null, '2024-04-08', 6, 3611000),
(null, '2023-10-10', 1, 338800),
(null, '2023-09-11', 4, 165600),
(null, '2024-12-01', 1, 672000),
(null, '2024-06-27', 1, 1503500),
(null, '2024-03-20', 4, 27300),
(null, '2023-01-23', 1, 4165000),
(null, '2023-06-20', 5, 308000),
(null, '2023-05-25', 4, 1121400),
(null, '2024-01-23', 5, 3366000),
(null, '2024-01-15', 3, 814200),
(null, '2023-06-29', 6, 1650000),
(null, '2024-03-25', 5, 114400),
(null, '2023-08-28', 1, 1500000),
(null, '2023-05-05', 3, 1557500),
(null, '2023-11-24', 2, 487600),
(null, '2023-11-07', 4, 4252500),
(null, '2023-06-12', 5, 4080000);

create table detalle_compra(
	id int primary key auto_increment,
	id_compra int,
	foreign key (id_compra)
	references compras(id)
	on delete restrict
	on update cascade,

	id_producto int,
	foreign key (id_producto)
	references productos(id)
	on delete restrict
	on update cascade,

	Cantidad int,
	Precio_unitario decimal
);

insert into detalle_compra values
(null, 1, 1, 184, 8500),
(null, 2, 3, 66, 15000),
(null, 3, 1, 136, 8500),
(null, 4, 8, 81, 8900),
(null, 5, 6, 37, 22000),
(null, 6, 2, 184, 27000),
(null, 7, 8, 147, 8900),
(null, 8, 8, 132, 8900),
(null, 9, 2, 72, 28000),
(null, 10, 2, 133, 29000),
(null, 11, 5, 24, 1250),
(null, 12, 4, 187, 35500),
(null, 13, 3, 111, 15000),
(null, 14, 6, 64, 22500),
(null, 15, 1, 104, 8500),
(null, 16, 8, 111, 9000),
(null, 17, 2, 165, 28000),
(null, 18, 4, 195, 35000),
(null, 19, 8, 163, 8800),
(null, 20, 4, 123, 35500),
(null, 21, 1, 94, 8500),
(null, 22, 5, 9, 1200),
(null, 23, 4, 148, 35000),
(null, 24, 8, 14, 8900),
(null, 25, 2, 169, 28000),
(null, 26, 2, 175, 28500),
(null, 27, 4, 40, 35500),
(null, 28, 8, 181, 8900),
(null, 29, 8, 67, 8900),
(null, 30, 1, 138, 8500),
(null, 31, 7, 73, 4500),
(null, 32, 3, 89, 15000),
(null, 33, 7, 39, 4500),
(null, 34, 3, 126, 15500),
(null, 35, 5, 186, 1200),
(null, 36, 3, 167, 15000),
(null, 37, 2, 111, 28500),
(null, 38, 1, 189, 8500),
(null, 39, 1, 123, 8500),
(null, 40, 3, 33, 15500),
(null, 41, 7, 199, 4400),
(null, 42, 6, 17, 21000),
(null, 43, 4, 116, 36000),
(null, 44, 5, 61, 1200),
(null, 45, 4, 194, 35500),
(null, 46, 5, 93, 1200),
(null, 47, 6, 49, 21000),
(null, 48, 4, 169, 35000),
(null, 49, 6, 8, 21000),
(null, 50, 6, 151, 22500),
(null, 51, 4, 79, 35000),
(null, 52, 1, 44, 8500),
(null, 53, 7, 125, 4500),
(null, 54, 6, 34, 23000),
(null, 55, 7, 67, 4500),
(null, 56, 3, 16, 15000),
(null, 57, 6, 157, 23000),
(null, 58, 7, 77, 4400),
(null, 59, 5, 144, 1150),
(null, 60, 2, 24, 28000),
(null, 61, 3, 97, 15500),
(null, 62, 5, 21, 1300),
(null, 63, 4, 119, 35000),
(null, 64, 2, 11, 28000),
(null, 65, 8, 126, 8900),
(null, 66, 6, 153, 22000),
(null, 67, 7, 177, 4600),
(null, 68, 3, 110, 15000),
(null, 69, 8, 13, 8800),
(null, 70, 3, 100, 15000),
(null, 71, 8, 175, 8900),
(null, 72, 7, 106, 4600),
(null, 73, 6, 189, 22500),
(null, 74, 4, 120, 34000);


create table movimientos(
	id int primary key auto_increment,
	Fecha_movimiento date,
	Tipo_movimiento varchar(50),
	Cantidad int,
	id_producto int,
	foreign key (id_producto)
	references productos(id)
	on delete restrict
	on update cascade,

	id_bodega int,
	foreign key (id_bodega)
	references bodegas(id)
	on delete restrict
	on update cascade
);


insert into movimientos (id, Fecha_movimiento, Tipo_movimiento, Cantidad, id_producto, id_bodega) values
(null, '2023-07-12', 'Entrada', 170, 1, 1),
(null, '2023-08-25', 'Entrada', 39, 3, 1),
(null, '2023-10-04', 'Salida', 26, 1, 1),
(null, '2024-04-27', 'Entrada', 42, 8, 2),
(null, '2024-06-07', 'Entrada', 17, 6, 1),
(null, '2024-06-17', 'Entrada', 138, 2, 3),
(null, '2023-06-16', 'Entrada', 85, 8, 2),
(null, '2023-07-18', 'Salida', 129, 8, 4),
(null, '2023-03-03', 'Entrada', 59, 2, 1),
(null, '2024-11-04', 'Salida', 61, 2, 2),
(null, '2024-04-07', 'Salida', 19, 5, 3),
(null, '2024-08-24', 'Salida', 81, 4, 3),
(null, '2023-12-12', 'Salida', 5, 3, 2),
(null, '2023-11-28', 'Entrada', 20, 6, 3),
(null, '2023-11-10', 'Salida', 75, 1, 1),
(null, '2023-05-18', 'Entrada', 30, 8, 4),
(null, '2023-09-17', 'Salida', 98, 2, 4),
(null, '2024-05-06', 'Salida', 25, 4, 4),
(null, '2024-11-08', 'Entrada', 143, 8, 3),
(null, '2023-03-06', 'Salida', 27, 4, 3),
(null, '2024-05-31', 'Entrada', 55, 1, 4),
(null, '2023-02-01', 'Entrada', 9, 5, 1),
(null, '2023-05-24', 'Entrada', 55, 4, 2),
(null, '2023-04-02', 'Salida', 10, 8, 4),
(null, '2024-05-19', 'Salida', 68, 2, 3),
(null, '2024-04-30', 'Salida', 26, 2, 4),
(null, '2023-09-12', 'Salida', 36, 4, 4),
(null, '2023-04-28', 'Salida', 175, 8, 3),
(null, '2024-06-20', 'Entrada', 31, 8, 3),
(null, '2024-12-02', 'Salida', 2, 1, 4),
(null, '2024-10-16', 'Entrada', 53, 7, 2),
(null, '2023-02-28', 'Entrada', 34, 3, 2),
(null, '2023-05-21', 'Salida', 16, 7, 2),
(null, '2024-07-16', 'Entrada', 60, 3, 2),
(null, '2024-05-13', 'Salida', 15, 5, 4),
(null, '2024-10-05', 'Salida', 162, 3, 2),
(null, '2024-06-03', 'Salida', 44, 2, 2),
(null, '2023-03-23', 'Entrada', 29, 1, 3),
(null, '2023-07-18', 'Salida', 43, 1, 1),
(null, '2023-12-08', 'Salida', 5, 3, 2),
(null, '2023-06-03', 'Salida', 197, 7, 3),
(null, '2023-11-14', 'Entrada', 6, 6, 1),
(null, '2023-03-30', 'Salida', 84, 4, 4),
(null, '2024-10-28', 'Entrada', 46, 5, 1),
(null, '2024-02-13', 'Entrada', 101, 4, 2),
(null, '2023-08-31', 'Entrada', 6, 5, 1),
(null, '2024-02-14', 'Entrada', 20, 6, 1),
(null, '2024-03-26', 'Entrada', 149, 4, 3),
(null, '2024-01-10', 'Entrada', 7, 6, 1),
(null, '2023-01-26', 'Entrada', 76, 6, 2),
(null, '2023-03-09', 'Salida', 61, 4, 2),
(null, '2023-12-03', 'Salida', 42, 1, 2),
(null, '2023-04-27', 'Salida', 100, 7, 1),
(null, '2023-03-04', 'Salida', 24, 6, 1),
(null, '2023-05-02', 'Salida', 26, 7, 1),
(null, '2024-03-28', 'Salida', 14, 3, 1),
(null, '2024-04-08', 'Salida', 153, 6, 2),
(null, '2023-10-10', 'Entrada', 27, 7, 1),
(null, '2023-09-11', 'Entrada', 103, 5, 1),
(null, '2024-12-01', 'Salida', 21, 2, 4),
(null, '2024-06-27', 'Salida', 34, 3, 4),
(null, '2024-03-20', 'Entrada', 18, 5, 3),
(null, '2023-01-23', 'Entrada', 32, 4, 3),
(null, '2023-06-20', 'Entrada', 7, 2, 1),
(null, '2023-05-25', 'Salida', 103, 8, 2),
(null, '2024-01-23', 'Entrada', 100, 6, 2),
(null, '2024-01-15', 'Salida', 121, 7, 4),
(null, '2023-06-29', 'Entrada', 42, 3, 3),
(null, '2024-03-25', 'Entrada', 2, 8, 2),
(null, '2023-08-28', 'Entrada', 46, 3, 4),
(null, '2023-05-05', 'Entrada', 95, 8, 2),
(null, '2023-11-24', 'Salida', 90, 7, 3),
(null, '2023-11-07', 'Salida', 117, 6, 3),
(null, '2023-06-12', 'Salida', 115, 4, 1);



CREATE VIEW vista_compras_completa AS
SELECT
    c.id AS id_compra,
    c.Fecha_venta,
    pr.Nombre AS proveedor,
    ci.Nombre AS ciudad_proveedor,
    p.Nombre AS producto,
    cat.Nombre AS categoria,
    dc.Cantidad,
    dc.Precio_unitario,
    (dc.Cantidad * dc.Precio_unitario) AS subtotal,
    b.Nombre AS bodega
FROM compras c
JOIN proveedores pr ON c.id_proveedor = pr.id
JOIN ciudades ci ON pr.id_ciudad = ci.id
JOIN detalle_compra dc ON dc.id_compra = c.id
JOIN productos p ON dc.id_producto = p.id
JOIN categorias cat ON p.id_categoria = cat.id
JOIN movimientos m ON m.id_producto = p.id
JOIN bodegas b ON m.id_bodega = b.id order by c.Fecha_venta asc;

select * from vista_compras_completa;
