use mysql;

create user junior@localhost identified by 'nana123'; -- crear usuario junior solo lectura
grant select on transportes_san_daniel.* to junior@localhost; -- permisos de solo lectura para transportes_san_daniel

create user supervisor@localhost identified by 'nana123'; --  crear usuario supervisor con permisos lectura, insercion y modificacion
grant select on transportes_san_daniel.* to supervisor@localhost; -- permisos de solo lectura para transportes_san_daniel
grant insert on transportes_san_daniel.* to supervisor@localhost; -- permisos de solo insercion para transportes_san_daniel
grant update on transportes_san_daniel.* to supervisor@localhost;-- permisos de solo modificar para transportes_san_daniel