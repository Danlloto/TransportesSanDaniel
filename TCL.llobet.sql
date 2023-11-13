use transportes_san_daniel;

select @@autocommit;

select @@autocommit = 0;

select * from clientes;
select * from direcciones;
select * from facturas;
select * from dpto_ventas;


                        -- 1
delimiter $$
create procedure ingreso_ventas()
begin
	declare error_state varchar(5) default '00000';
	declare exit handler for sqlexception, sqlwarning
    begin
		get diagnostics condition 1
            error_state = returned_sqlstate;
        select concat("ERROR EN EJECUCION: ", error_state);
        rollback;
    end;
    
    start transaction;
    insert into clientes 
    values (null,497,"DESIRE","RODRIGUEZ","254785125-5",269479555,"DESI_RO@GMAIL.COM");
	insert into direcciones
    values (null,"ARTURO PRATT",310,"SANTIAGO","PUERTO VARAS",5550000);
    savepoint sp1;
	insert into dpto_ventas
    values (508,null,956327512);
    savepoint sp2;
	insert into facturas
    values (515,508,null,40,null,'2023-11-12',34464,181391);
    commit;
end$$

call ingreso_ventas();

select * from clientes where id_cliente = 508;
select * from direcciones where calle = "arturo pratt";
select * from facturas where id_factura = 515;
select * from dpto_ventas where id_ventas = 508;

                        -- 2
     select * from clientes where id_cliente = 508;    
     
start transaction;
delete from clientes where nombre_cliente = "DESIRE";
rollback;
-- commit;
		
	select * from clientes where id_cliente = 508;


