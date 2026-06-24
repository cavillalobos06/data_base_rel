create table vendedor(
	id int primary key auto_increment,
    nombre varchar(50)
);
insert into vendedor values(null, "Carlos Gómez"),(null, "Mónica Ruiz"),(null, "Pedro Sánchez"),(null, "Javier León"),(null, "Diana Torres");

create table categoria(
id int primary key auto_increment,
nombre varchar(50)
);

insert into categoria values(null,"Monitores"),(null,"Computadores"),(null,"Almacenamiento"),(null,"Accesorios"),(null,"Impresión");

create table cliente(
id int primary key auto_increment,
nombre_completo varchar(50),
apellido varchar(50),
telefono varchar(30),
cedula varchar(15) unique
);
insert into cliente values(null, "Luis","Torres","3005556677","1067890123"),(null, "Camilo","Díaz","3011112233","1101234567"),(null, "Carlos","Rodríguez","3003334455","1045678901"),(null, "Jorge","Ramírez","3013334455","1123456789"),(null, "Miguel","Cárdenas","3017778899","1167890123"),(null, "Juliana","Acosta","3018889900","1178901234"),(null, "Juan","Pérez","3001112233","1023456789"),(null, "Natalia","Silva","3016667788","1156789012"),(null, "Paula","Moreno","3014445566","1134567890"),
(null, "Valentina","Rojas","3008889900","1090123456"),(null, "Sara","Hernández","3024445566","1212345678"),(null, "Laura","Mendoza","3012223344","1112345678"),(null, "Andrés","Castro","3007778899","1089012345"),(null, "María","Gómez","3002223344","1034567890"),(null, "Daniela","Ruiz","3022223344","1190123456"),(null, "Kevin","López","3023334455","1201234567"),(null, "Ana","Martínez","3004445566","1056789012"),(null, "Felipe","Gómez","3021112233","1189012345");

create table producto(
id int primary key auto_increment,
nombre_producto varchar(50),
precio decimal,
id_categoria int,

foreign key (id_categoria)
references categoria(id)
on delete cascade
on update cascade
);

insert into producto values(null, "Monitor Samsung 24",850000, 1),(null, "Laptop Asus",3200000, 2),
(null, "Disco SSD 1TB",350000, 3),(null, "Monitor LG 27",1200000, 1),(null, "Memoria USB 64GB",45000, 3),
(null, "Mouse Logitech",80000, 4),(null, "Impresora Epson",650000, 5),(null, "Teclado Redragon",180000, 4),
(null, "SSD 512GB",220000, 3),(null, "Laptop HP",2800000, 2),(null, "Teclado Mecánico",250000, 4),(null, "Laptop Lenovo",2500000, 2);


create table venta(
id int primary key auto_increment,
fecha date,
id_cliente int,

foreign key (id_cliente)
references cliente(id)
on delete restrict
on update cascade,

id_producto int,

foreign key (id_producto)
references producto(id)
on delete restrict
on update cascade,

id_vendedor int,

foreign key (id_vendedor)
references vendedor(id)
on delete restrict
on update cascade

);

create table detalle_venta(
id int primary key auto_increment,
id_venta int,

foreign key (id_venta)
references venta(id)
on delete restrict
on update cascade

);