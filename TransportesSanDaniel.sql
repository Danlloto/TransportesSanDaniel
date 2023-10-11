create schema transportes_san_daniel;

use transportes_san_daniel;

create table direcciones (
id_direccion int not null auto_increment primary key,
calle varchar(100) not null ,
numero int not null,
comuna varchar(50) not null,
ciudad varchar(50) not null,
codigo_postal  int
);

create table clientes (
id_cliente int not null auto_increment primary key,
id_direccion int not null,
nombre_cliente varchar(50) not null,
apellido_cliente varchar(50) not null,
rut_cliente varchar(10) not null,
telefono_cliente int not null,
email_cliente varchar(100) not null,
foreign key (id_direccion) references direcciones (id_direccion)
);

create table vendedores (
id_vendedor int not null primary key,
nombre varchar(50),
apellido varchar(50),
rut varchar(10),
cargo varchar(50)
);

create table facturas (
id_factura int not null auto_increment primary key,
id_cliente int,
id_vendedor int,
id_direccion int,
fecha_factura date not null,
impuesto int not null,
total_pagar int not null,
foreign key (id_cliente) references clientes(id_cliente),
foreign key (id_vendedor) references vendedores(id_vendedor),
foreign key(id_direccion) references direcciones(id_direccion)
);

create table dpto_ventas (
id_ventas int auto_increment not null primary key,
id_factura int,
id_vendedor int,
foreign key (id_factura) references facturas(id_factura),
foreign key (id_vendedor) references vendedores(id_vendedor)
);

create table vehiculos (
id_vehiculos int not null primary key,
nombre_vehiculo varchar(50) not null,
marca varchar(20) not null,
anio int not null,
patente VARCHAR(10) not null,
capacidad_carga varchar(50) not null,
nombre_chofer varchar(20) not null,
apellido_chofer varchar(20) not null,
rut_chofer varchar(10) not null
);

create table orden_despacho (
id_orden_despacho int not null auto_increment primary key,
id_direccion int,
fecha_orden_despacho date not null,
fecha_recepcion date not null,
foreign key (id_direccion) references direcciones (id_direccion)
);

create table dpto_despachos (
id_despachos int not null auto_increment primary key,
id_factura int,
id_orden_despacho int,
id_vehiculos int,
foreign key (id_factura) references facturas (id_factura),
foreign key (id_orden_despacho) references orden_despacho (id_orden_despacho),
foreign key (id_vehiculos) references vehiculos (id_vehiculos)
)

