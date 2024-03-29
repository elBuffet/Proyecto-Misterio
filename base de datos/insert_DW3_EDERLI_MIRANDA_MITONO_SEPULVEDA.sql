USE DW3_EDERLI_MIRANDA_MITONO_SEPULVEDA;

INSERT INTO
	permisos (CREAR, EDITAR, BORRAR, MODERAR_COMENTARIOS, MODERAR_USUARIOS, MODERAR_POSTS)
VALUES
	('1', '1', '1', '1', '1', '1'),
	('1', '1', '0', '0', '0', '0');

INSERT INTO
	usuarios (NOMBRE_COMPLETO, NICK, EMAIL, EDAD, CONTRASENIA, FECHA_ALTA, U_ESTADO, FKPERMISOS)
VALUES
	('Germán Rodríguez', 'gerchu','german.rodriguez@davinci.edu.ar', '38', MD5('admin1234'), NOW( ), '1', 1),
	('Federico Miranda', 'fedejunior','federico.mirandaa@gmail.com', '22',MD5('1234'), NOW( ), '1', 1),
	('Leandro Merlo', 'leodom','merloleandro@gmail.com', '29',MD5('holis1234'), NOW( ), '1', 1),
	('Florencia Sepúlveda', 'css','florenciasepulveda.26@gmail.com', '27',MD5('holis1234'), NOW( ), '1', 1),
	('Florencia Ederli', 'fespix','florenciaespino@gmail.com', '29',MD5('zeldaeslomas'), NOW( ), '1', 1),
	('Laura Mitono', 'lechuza','mlauramitono@gmail.com', '35', MD5('nellylalechuza'),NOW( ), '1', 1),
	('Usuario Uno', 'unito','usuario1@davinci.edu.ar', '28',MD5('1234'), NOW( ), '1', 2),
	('Usuario Dos', 'docito','usuario2@davinci.edu.ar', '16',MD5('1234'), NOW( ), '1', 2),
	('Usuario Tres', 'trecito','usuario3@davinci.edu.ar', '67',MD5('1234'), NOW( ), '1', 2);

INSERT INTO
	tipo_chucherias (TIPO_CHUCHERIA)
VALUES
	('Coleccionables'), 
	('Comics'), 
	('Figuras de Acción'), 
	('Juegos'), 
	('Otros');
	
INSERT INTO
	articulos (TITULO, FECHA_ALTA, VIDEO, IMAGENES, IMG_DESTACADA, DESCRIPCION, A_ESTADO, FKUSUARIO, FKCHUCHERIA)
VALUES
	('Miren mi ropita nueva de Splatoon', NOW( ), null, null, 'splatoon.jpg', 'Hola amigos, estuve jugando al Splatton 2 para Nintendo Swith y me sorprendió la variedad de ropitas nuevas que hay disponible.', '1', 5, 1),
	('Through The Ages 2nd Edition!', NOW( ), null, 'through02.jpg, through03.jpg, through04.jpg', 'through01.jpg', 'Con Sid Meier, kpo total de la estrategia en la pc hace años y años!! Gracias por tanto, pequeño homenaje ingame a el, el lider mas codiciado!', '1', 1, 4),
	('Ticket to Ride: Europe', NOW( ), null, null, 'ticket.jpeg', 'Uno de mis jueguitos favoritos, super adictivo, puedo pasarme horas jugando con mis amigas Flor', '1', 6, 4),
	('Deadpool Funko Pop', NOW( ), null, null, 'deadpool.jpg', 'Miren el muñequito que me compré', '1', 2, 1),
	('Mi stitch y yo', NOW( ), null, null, 'stitch.jpg', 'Stitch rechazándome fuertemente un domingo por la noche', '1', 5, 1),
	('Colección Hogwarts', NOW( ), null, null, 'hogwarts.jpg', 'Lo mejor que me pudo haber pasado, no veo la hora de verlos todos', '1', 7, 1),
	('Mi nueva vitrina de comics', NOW( ), null, 'vitrina02.jpg, vitrina03.jpg', 'vitrina01.jpg', 'Mi aficción por las historietas me llevó a construir esta vitrina para mis comics. Mi favorito es Superman por ser la insignia y el ícono de DC-sin degradar a Batman-, y por su aspecto religioso, pues se asemeja a Jesús: vive sus 33 años, vino del cielo y es el más poderoso', '1', 2, 2),
	('Conseguí el Sushi Go!', NOW( ), null, 'sushi02.jpg', 'sushi01.jpg', 'No puedo mas de contenta con mi nuevo jueguito, y las cartitas son lo más', '1', 4, 4),
	('Envidien mi colección de figuras de DC Comic', NOW( ), null, null, 'coleccion_figuras.jpg', 'Me tuve que armar un estante para mi colección de personajes, ahora están todos juntitos', '1', 8, 3),
	('Amo Big Hero', NOW( ), null, 'big02.jpg, big03.jpg, big04.jpg, big05.jpg', 'big01.jpg', 'Mi asombrosa lámpara LED USB de Baymax. No puedo dejar de dormir con ella. Su cabeza y sus manos son móviles!', '1', 6, 5),
	('Lois and Peter', NOW( ), null, null, 'nighttime.jpg', 'Al carajo con todo! Me lo compré y me encanta. Que se curtan!', '1', 1, 1),
	('Nunca habrá otro Batman como Adam West', NOW( ), null, null, 'tatuaje.jpg', 'Adam no está físicamente, pero ahora vive aquí, en mi tatuaje', '1', 9, 5),
	('Dibujando a Shifu', NOW( ), null, null, 'master_shifu.jpg', 'Después de varios intentos logré hacerle este pequeño homenaje a este tan querido personaje de mi peli favorita', '1', 6, 5),
	('Droidecitos', NOW( ), null, null, 'droides.jpg', 'Los conseguí en la tienda de Tattoine Traders en los estudios Disney, son lo mas mono que he visto y no me resistí a comprarlos', '1', 9, 1),
	('Nerdeando con Call of Cthulhu', NOW( ), null, 'cthulhu02.jpg, cthulhu03.jpg', 'cthulhu01.jpg', 'Nerdeando con amigos solo porque si', '1', 1, 4),
	('Piper', NOW( ), 'piper.mp4', null, 'pajarito.jpg', 'Hice un videito muy tiernito y adorable para compartir.', '1', 7, 5),
	('Las pibitas y los jueguitos', NOW( ), null, null, 'pibitas01.jpg', 'Se metieron estas pibiiiiitas a mi casa y me quieren chorear los juegos y no las puedo sacar. Que nadie se meta con mi biblioteca!!!', '1', 5, 4);
	
	
INSERT INTO
	comentarios (COMENTARIO, FECHA_COMENTARIO, C_ESTADO, FKUSUARIO, FKARTICULO)
VALUES
	('Esa ropita está genial', NOW( ), '1', 4, 1),
	('Divina! La quiero ya!', NOW( ), '1', 9, 1),
	('Es un juego fantástico', NOW( ), '1', 6, 2),
	('Bienvenidos a mi Imperio, tomen asiento y vean como les paso el trapo', NOW( ), '1', 6, 3),
	('Me parece asombroso', NOW( ), '1', 5, 3),
	('Es una porquería', NOW( ), '0', 8, 4),
	('Que rica piba', NOW( ), '1', 5, 5),
	('Altas llantas', NOW( ), '1', 7, 1),
	('Está muy bueno pero son 8 horas de juego', NOW( ), '1', 5, 2),
	('El mejor Batman de todos los tiempos, inigualable', NOW( ), '1', 1, 12),
	('Uhhhhhhh papapapa se ve genial', NOW( ), '1', 9, 11),
	('No se parece en nada, te quedó super espantoso', NOW( ), '1', 7, 13),
	('Impresionante invitame!', NOW( ), '1', 5, 6),
	('Es muy tiernita esa lámpara', NOW( ), '1', 4, 10),
	('Juguemos ese jueguito super genial en todos los recreos de DV!', NOW( ), '1', 6, 8),
	('De lo mejor que se vio en este último tiempo', NOW( ), '0', 1, 1),
	('Alto dibujo! no le hagas caso a Unito que es un gil', NOW( ), '1', 4, 13),
	('Laaaaaaaau llevate el Splendor!', NOW( ), '1', 2, 17);
	
INSERT INTO
	categorias (CATEGORIA)
VALUES
	('Gameplay'), 
	('Como jugar'), 
	('Unboxing'), 
	('Review'), 
	('Fan Made'), 
	('Homenaje'), 
	('Animacion'), 
	('Live action'), 
	('Random'),
	('Bragging'); 

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
	( 6, 10 ),
	( 7, 9 ),
	( 7, 10),
	( 8, 10),
	( 9, 10),
	( 10, 10),
	( 11, 10),
	( 12, 6),
	( 13, 5),
	( 13, 6),
	( 14, 9),
	( 14, 10),
	( 15, 1),
	( 16, 7),
	( 17, 9),
	( 17, 10);


	
