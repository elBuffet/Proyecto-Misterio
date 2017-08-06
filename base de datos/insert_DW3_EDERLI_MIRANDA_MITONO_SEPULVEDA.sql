USE DW3_EDERLI_MIRANDA_MITONO_SEPULVEDA;

INSERT INTO
	permisos (CREAR, EDITAR, BORRAR, MODERAR_COMENTARIOS, MODERAR_USUARIOS, MODERAR_VIDEOS)
VALUES
	('1', '1', '1', '1', '1', '1'),
	('1', '1', '0', '0', '0', '0');

INSERT INTO
	usuarios (NOMBRE_USUARIO, NOMBRE_COMPLETO, EMAIL, CONTRASENIA, FECHA_ALTA, U_ESTADO, FKPERMISOS)
VALUES
	('grodriguez', 'german rodriguez', 'german.rodriguez@davinci.edu.ar', MD5('admin1234'), NOW( ), '1', 1),
	('fmiranda', 'federico miranda', 'federico.mirandaa@gmail.com', MD5('1234'), NOW( ), '1', 1),
	('lmerlo', 'leandro merlo', 'merloleandro@gmail.com', MD5('holis1234'), NOW( ), '1', 1),
	('florsepulveda', 'florencia sepulveda', 'florenciasepulveda.26@gmail.com', MD5('holis1234'), NOW( ), '1', 1),
	('fespino', 'florencia ederli', 'florenciaespino@gmail.com', MD5('zeldaeslomas'), NOW( ), '1', 1),
	('lmitono', 'laura mitono', 'mlauramitono@gmail.com', MD5('nellylalechuza'), NOW( ), '1', 1),
	('usuario1', 'usuario uno', 'usuario1@davinci.edu.ar', MD5('1234'), NOW( ), '1', 2),
	('usuario2', 'usuario dos', 'usuario2@davinci.edu.ar', MD5('1234'), NOW( ), '1', 2),
	('usuario3', 'usuario tres', 'usuario3@davinci.edu.ar', MD5('1234'), NOW( ), '1', 2);

INSERT INTO
	articulos (TITULO, CHUCHERIA, FECHA_ALTA, VIDEO, IMAGENES, IMG_DESTACADA, DESCRIPCION, A_ESTADO, FKUSUARIO)
VALUES
	('Miren mi ropita nueva de Splatoon', 'Splatoon', NOW( ), null, null, 'splatoon.jpg', 'Hola amigos, estuve jugando al Splatton 2 para Nintendo Swith y me sorprendió la variedad de ropitas nuevas que hay disponible.', '1', 5),
	('Through The Ages 2nd Edition!', 'Through The Ages', NOW( ), null, 'through02.jpg, through03.jpg, through04.jpg', 'through01.jpg', 'Con Sid Meier, kpo total de la estrategia en la pc hace años y años!! Gracias por tanto, pequeño homenaje ingame a el, el lider mas codiciado!', '1', 1),
	('Ticket to Ride: Europe', 'Ticket to Ride', NOW( ), null, 'ticket.jpeg', 'Uno de mis jueguitos favoritos, super adictivo, puedo pasarme horas jugando con mis amigas Flor', '1', 6),
	('Deadpool Funko Pop', 'Deadpool', NOW( ), null, null, 'deadpool.jpg', 'Miren el muñequito que me compré', '1', 2),
	('Mi stitch y yo', 'stitch', NOW( ), null, null, 'stitch.jpg', 'Stitch rechazándome fuertemente un domingo por la noche', '1', 5),
	('Deadpool Funko Pop', 'Deadpool', NOW( ), null, null, 'deadpool.jpg', 'Miren el muñequito que me compré', '1', 2);
	('Deadpool Funko Pop', 'Deadpool', NOW( ), null, null, 'deadpool.jpg', 'Miren el muñequito que me compré', '1', 2);

INSERT INTO
	comentarios (COMENTARIO, FECHA_COMENTARIO, C_ESTADO, FKUSUARIO, FKARTICULO)
VALUES
	('Este video está genial', NOW( ), '1', 1, 2),
	('Quiero que vuelvan a subir más videos como este', NOW( ), '1', 6, 3),
	('Me parece asombroso', NOW( ), '1', 5, 8),
	('Es una porquería', NOW( ), '0', 9, 4),
	('Que copado que está, voy a volver a verlo', NOW( ), '1', 2, 14),
	('Se mandaron cualquiera', NOW( ), '0', 5, 6),
	('Simplemente maravilloso', NOW( ), '1', 3, 12),
	('Tiene una estetica asombrosa', NOW( ), '1', 4, 5);

INSERT INTO
	categorias (CATEGORIA)
VALUES
	('Gameplay'), --1
	('Como jugar'), --2
	('Unboxing'), --3
	('Opinion/Review'), --4
	('Fan Made'), --5
	('Homenaje'), --6
	('Animacion'), --7
	('Live action'), --8
	('Random / Misc'), --9
	('Bragging'); --10

INSERT INTO
	articulos_categorias
VALUES
	( 1, 7 ), 
	( 1, 10 ),
	( 2, 6 ),
	( 3, 10 ),
	( 4, 10 ),
	( 5, 9 ),
	( 5, 10 ),
	
	( 7, 6 ),
	( 10, 7 ),
	( 12, 4 );