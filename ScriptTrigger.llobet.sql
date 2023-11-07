use transportes_san_daniel;

CREATE TABLE notas_auditoria (
id_log int primary key auto_increment,
tabla varchar(100),
tabla_id int,
usuario_creador varchar(100),
fecha datetime,
modificado varchar(100),
fecha_modificacion datetime);

select * from notas_auditoria;

CREATE TRIGGER `tr_auditoria`
after insert on `clientes`
for each row
insert into `notas_auditoria` (tabla, tabla_id, usuario_creador, fecha, modificado, fecha_modificacion)
values ('clientes', NEW.id_cliente, user(), current_timestamp(), user(), current_timestamp());

insert into clientes
value (501,371,"JACSONFIVE","ADURAN","445558338-5",269444707,"FIVEFIVE@UN.ORG");

select * from clientes;

CREATE TRIGGER `tr_modif_auditoria`
after update on `clientes`
for each row
update `notas_auditoria` set modificado = user(), fecha_modificacion = current_timestamp()
where tabla_id = new.id_cliente;

update clientes set nombre_cliente = 'JUANITO' where id_cliente = 501;

select * from clientes;
select * from notas_auditoria;


