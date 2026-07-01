create table paises(
	id int primary key auto_increment,
	Nombre varchar(50)
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

select p.nombre, p.Nit, p.Email, ciudades.nombre as ciudad from proveedores p inner join ciudades on p.id_ciudad = ciudades.id;

create table bodegas(
	id int primary key auto_increment,
	Nombre varchar(50),
	id_ciudad int,
	foreign key (id_ciudad)
	references ciudades(id)
	on delete restrict
	on update cascade,
	Direccion varchar(50),
	Nombre_administrador varchar(50)
);

insert into bodegas values
(null, "Bodega Norte Barranquilla", 1, "Calle 80 # 43-20", "María");


create table categorias(
	id int primary key auto_increment,
	Nombre varchar(50),
	Descripcion varchar(200)
);


create table subcategorias(
	id int primary key auto_increment,
	Nombre varchar(50),
	id_categoria int,
	foreign key (id_categoria)
	references categorias(id)
);


create table unidades_de_medida(
	id int primary key auto_increment,
	Nombre varchar(50),
	Abreviatura varchar(5)
);


create table productos(
	id int primary key auto_increment,
	Nombre varchar(50),
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