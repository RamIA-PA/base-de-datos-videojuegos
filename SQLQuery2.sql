-- creacion de la base de datos
create database Bd_Tran
go
-- señalando que base de datos se debe utilizar
use Bd_Tran
go
--creacion de la tabla clientes
create table clientes
(
id_cliente int primary key not null,
cliente varchar (20) not null,
contraseña varchar (20) not null,
correo varchar (20) not null,
fecha_registro datetime not null,
);
go
--creacion de la tabla juego
create table juegos
(
id_juego int  primary key not null,
juegos varchar (30) not null,
inventario varchar(20) not null,
insignias varchar (20) not null,
precio money not null,
);
go

--modificaciones
-- creacion de la tabla usuarios

create table usuarios (
id_usuario int primary key not null,
nombre varchar (20),
especialidad varchar (20),
);
go
--insercion de datos en la tabla usuarios

insert into usuarios values (1,'Ram','tablas')
insert into usuarios values (2,'Jose','admin')
insert into usuarios values (3,'Paco','becario')
go
-- creacion de la tabla compras
create table compras
(
id int  primary key not null,
id_usuario int not null,
id_cliente int not null,
id_juegos int not null,
fechac datetime,
constraint fk_usuarios foreign key (id_usuario) references usuarios (id_usuario),
constraint fk_juegos foreign key (id_juegos) references juegos (id_juego),
constraint fk_clientes foreign key (id_cliente) references clientes (id_cliente),
);

go
-- insercion de datos en la tabla clientes
insert into clientes values (1,'Ram PA','0987754','brianomg23@gmail.com','2009-04-12 00:00:00.000');
insert into clientes values (2,'Jose777','123345','maeillanes@gmail.com','2012-08-05 00:00:00.000');
insert into clientes values (3,'Clicussi','teri666','apalamosg@gmail.com','2013-01-09 00:00:00.000');
insert into clientes values (4,'Majereerer','omg987','mapuchin@outlook.com','2015-12-19 00:00:00.000');
insert into  clientes values (5,'SkillRavager','uytu657','osabarca@hotmail.com','2011-06-15 00:00:00.000');
insert into clientes values (6,'Penguetry','21345','tes@manq.outlook.com','2021-01-29');
insert into  clientes values (7,'Sperio','fae32','nihox@hotmail.com','2014-04-23');
insert into  clientes values (8,'Storksan','o921u','cabrigo@garmendia.cl','2017-06-02');
insert into  clientes values (9,'Taotu','457gd','fran.afull@live.cl','2015-03-23');
insert into  clientes values (10,'Vampwe','xcef4g','mapuchin@gmail.com','2013-04-05');
insert into  clientes values (11,'Shearsoff','hus079150','hosam.ayd4@gmail.com','2015-03-24 00:00:00.000');
insert into  clientes values (12,'Disillusione','unternetgta200','ravihary@gmail.com','2017-04-20 00:00:00.000');
insert into  clientes values (13,'WrersCeose','damengambit','daryuilar@gmail.com','2015-03-14 00:00:00.000');
insert into  clientes values (14,'Wretchedstein','Jongab123','Faisalwod@yahoo.com','2016-12-12  00:00:00.000');
insert into  clientes values (15,'Wretchedlitz','ademayem12','bhanudas@gmail.com','2014-03-15 00:00:00.000');
insert into clientes values (16,'Shearskun','uhujhgo','tevintho@gmail.com ',' 2021-10-21 00:00:00.000');
insert into clientes values (17,'Shearsboi','Lvincent','info@home.finance.ua','2020-04-25  00:00:00.000');
insert into clientes values (18,'Tuevain','million','proudto@gmail.com','2018-05-05 00:00:00.000');
insert into clientes values (19,'Ambiguoustrom','Elobe2307','jarek.t@onet.pl','2016-04-24 00:00:00.000');
insert into clientes values (20,'LoutishVain','Samissau1','weijian@gmail.com','2018-09-04 00:00:00.000');
insert into clientes values (21,'Am81nV41u5','rocknroll18','vesaguero@gmail.com','2014-06-15 00:00:00.000');

insert into clientes values (22,'Carlos Mirrae','kkul990','c.mirrae@gmail.com','2021-04-12 12:43:00.000');
insert into clientes values (23,'Mario Tello','jjuls_23','mario.bros@gmail.com','2020-04-23 10:00:00.000');
insert into clientes values (24,'Enrique Gondola','89_34ll.w','kike_g09@gmail.com','2021-09-24 22:09:00.000');
insert into clientes values (25,'Jeff Bezos','amazon_78','jeff.bezs@gmail.com','2020-03-21 15:14:00.000');
insert into clientes values (26,'Michael Jordan','bulls_23','michael23@gmail.com','2019-05-20 20:21:00.000');
insert into clientes values (27,'Patricia Norman','norman91','norman91@gmail.com','2020-09-21 21:45:00.000');
insert into clientes values (28,'Luigi Bros','amoamario_l','luigi_d@gmail.com','2018-10-20 12:21:00.000');
insert into clientes values (29,'Mario Bros','mario_bb','marioti@gmail.com','2017-09-23 23:01:00.000');
insert into clientes values (30,'Shrek','shrek_21','ssherk@gmail.com','2021-10-29 08:32:00.000');
insert into clientes values (31,'Naruto Uzumaki','u_naruto','hokage@gmail.com','2021-10-22 19:31:00.000');
insert into clientes values (32,'Sasuke Uchiha','uchihacl_21','clan_u@gmail.com','2021-11-25 13:30:00.000');
Insert into clientes values (33,'Eustas AA','5485145','eustas33@gmail.com','2009-04-12 00:00:00.000');
Insert into clientes values (34,'Dast PE','5485143','dastmian4@gmail.com','2009-03-12 00:00:00.000');
Insert into clientes values (35,'Eitan','5485142','Eitan55@gmail.com','2009-05-12 00:00:00.000');
Insert into clientes values (36,'Elliot UR','5485141','elliot5587@gmail.com','2009-06-12 00:00:00.000');
Insert into clientes values (37,'Embest OE','5485147','embest@gmail.com','2009-07-12 00:00:00.000');
Insert into clientes values (38,'Eiren PE','5485148','erems22@gmail.com','2009-06-12 00:00:00.000');
Insert into clientes values (39,'Moest LA','5485149','moestin47@gmail.com','2009-08-12 00:00:00.000');
Insert into clientes values (40,'Mors PR','5485140','moresa65@gmail.com','2009-09-12 00:00:00.000');
Insert into clientes values (41,'Aust AA','5485156','Austin25@gmail.com','2009-07-12 00:00:00.000');
Insert into clientes values (42,'Meart LU','5485154','Mariartis2@gmail.com','2009-01-12 00:00:00.000');
insert into clientes values (43,'gentlemenjack','Smack123','gologlo111@gmail.com',' 2015-05-12 00:00:00.000');
insert into clientes values (44,'DschinghisKhan','MoskauMoskau','leaubeor@germany.com',' 2016-06-21 00:00:00.000');
insert into clientes values (45,'allahuakbarx110','remendor0412','vigili@hotmail.com',' 2019-01-01 00:00:00.000');
insert into clientes values (46,'RyuichiTry','naruhodonews','wrait&co@ru.com',' 2021-10-12 00:00:00.000');
insert into clientes values (47,'yurinito66','qwertyuiop','sasageyo@outlook.com',' 2005-09-14 00:00:00.000');
insert into clientes values (48,'AncileAnnonne','mamauh14','amitofou@gmail.com',' 2018-09-12 00:00:00.000');
insert into clientes values (49,'elgatogamer','rasengan777','youtubegamer2@eu.pa',' 2017-04-13 00:00:00.000');
insert into clientes values (50,'CorruptoCC','labotreq09','rubiunosea@gmail.com','2015-03-03 00:00:00.000');
insert into clientes values (51,'Bashitgamer','babsura65','ratablan@yahoo.hu',' 2020-12-20 00:00:00.000');
insert into clientes values (52,'Caquipopo','excromo12','ratanegra15@rusia.ru','2021-09-24 00:00:00.000');

insert into clientes values (53,'Leonard','51568466','leonard15@gmail.com','2009-06-10 00:00:00.000');
insert into clientes values (54,'malcolm','23247894','malcolmm@gmail.com','2010-06-10 00:00:00.000');
insert into clientes values (55,'sofimarcy','12345678','sofimrc@gmail.com','2011-10-07 00:00:00.000');
insert into clientes values (56,'brendanlh','98745622','blh2424@gmail.com','2011-11-11 00:00:00.000');
insert into clientes values (57,'ibaillanos','87656669','ibai125@gmail.com','2012-03-17 00:00:00.000');
insert into clientes values (58,'lamtory','78234519','lamtory1@gmail.com','2010-10-10 00:00:00.000');
insert into clientes values (59,'carlmanz','14785236','carlmanz15@gmail.com','2013-09-10 00:00:00.000');
insert into clientes values (60,'postday','23568974','postday5@gmail.com','2010-08-15 00:00:00.000');
insert into clientes values (61,'hallofame','51568464','haafame@gmail.com','2014-05-11 00:00:00.000');
insert into clientes values (62,'maurick','17569842','mrck45@gmail.com','2010-01-03 00:00:00.000');
insert into clientes values (63,'sponsor','22554478','spsr@gmail.com','2011-02-04 00:00:00.000');

go




-- insercion de datos en la tabla juegos
insert into juegos values (1,'Dragon Ball Z','cromo Z','kakarot',59.99);
insert into juegos values (2,'Kunai','cromo Kunai','yui',16.99 );
insert into juegos values (3,'ScourgeBringer','cromo Scourger','Bringer',14.99);
insert into juegos values (4,'Black Mesa','cormo black','black mesa',17.99);
insert into juegos values (5,'DOOM Eternal','cromo DOOM','Doom Eternal',59.99);
insert into juegos values (6,'Half-Life: Alyx','cromo life','life',49.99);
insert into juegos values (7,'Resident Evil 3','cromo resident3','evil3',59.99);
insert into juegos values (8,'Trials of Mana','cromo mana','mana', 49.99);
insert into juegos values (9,'Gears Tactics','cromo gears','gears tactics',69.99);
insert into juegos values (10,'Streets of Rage 4','cromo rage4','rage4',24.99);
insert into juegos values (11,'Attorney Chronicles','Ace Attorney','NO',39.99);
insert into juegos values (12,'MONOPOLY PLUS','No cromo','no insignia',14.99);
insert into juegos values (13,'Knockout City™','No cromo','no insignia',19.99);
insert into juegos values (14,'Green Hell','Caveman','Inferno verde',24.99);
insert into juegos values (15,'Assassins Creed® Odyssey','NO','NO',59.99);
insert into juegos values (16,'Assassins Creed® Origins','No','No',59.99);
insert into juegos values (17,'Conan Exiles','No','No',39.99);
insert into juegos values (18,'The Forest','Survivor','Red Faith',19.99);
insert into juegos values (19,'Rainbow Six Siege','no','no',19.99);
insert into juegos values (20,'State of Decay 2','Playing Doctor','No',29.99);
insert into juegos values (21,'Phoenix Wright','Rookie Lawyer','Phoenix',29.99);
insert into juegos values (22,'Luigis Mansion 3','cromo luigi','luigi', 59.99);
insert into juegos values (23,'Pokémon Shield','cromo shield','pshield',59.99);
insert into juegos values (24,'Pokémon Sword','cromo sword','psword',59.99);
insert into juegos values (25,'Battlefield','cromo bb','guns',49.99);
insert into juegos values (26,'God Of War','cromo Kratos','kratos',39.99);
insert into juegos values (27,'The Legend of Zelda','cromo Zelda','link',69.99);
insert into juegos values (28,'Fifa 22','cromo 22','fifa',79.99);
insert into juegos values (29,'Watch Dogs Deluxe','cromo dogs','hacker',79.99);
insert into juegos values (30,'Kirby EpicYarn','cromo Kirby','yarn',39.99);
insert into juegos values (31,'Death Stranding','cromo norman','stranding',59.99);
insert into juegos values (32,'Jump Force','cromo force','jump',39.99);
insert into juegos values (33,'Blue Protocol','cromo Blue','Protocol',49.99 );
insert into juegos values (34,'Beyond Good','cromo Good','Beyond',24.99 );
insert into juegos values (35,'Star Citizen','cromo Star','Citizen',16.99 );
insert into juegos values (36,'Dead Island','cromo Island','Dead2',16.99 );
insert into juegos values (37,'The Legend of KK','cromo KK','Legend',16.99 );
insert into juegos values (38,'Metroid','cromo Metroid','Emma',14.99 );
insert into juegos values (39,'Elden Ring','cromo Elden','Ring',9.99 );
insert into juegos values (40,'Lost Ark','cromo Lost','Ark',19.99 );
insert into juegos values (41,'Granblue Fantasy','cromo Fantasy','Blue',29.99 );
insert into juegos values (42,'Bayonetta','cromo Bayonetta','Bayo',54.99 );

insert into juegos values (43,'Red Dead redemption 2','NO','NO',29.99);
insert into juegos values (44,'Sonic & all stars','Sonic','',4.99);
insert into juegos values (45,'For Honor','Conqueror','Recruit',7.49);
insert into juegos values (46,'Injustice 2','Batman!','JusticeLeague',9.99);
insert into juegos values (47,'Metro Exodus','Artyom','Outpost',11.99);
insert into juegos values (48,'Devil May Cry 5','Vergil','Demon',19.79);
insert into juegos values (50,'Among US','SUS','Impostor',3.74);
insert into juegos values (51,'Fallout 4','NO','NO',7.99);
insert into juegos values (52,'UNO','Go Wild','ACTION!',3.99);
insert into juegos values (53,'Borderlands 3','ClapTrap','xD',14.99);
insert into juegos values (54,'AssetoCorsa Competizione','Novo maquina','AltaCompetizione',13.59);
insert into juegos values (55,'Hot Wheels','XD','xD',34.99);
insert into juegos values (56,'Star Wars Battlefront 2','Dark Vather','The force',7.99);
insert into juegos values (57,'Battlefield V','War','Total Assault',49.99);
insert into juegos values (58,'Worms World Party','World Domination','Uzi 9mm',2.99);
insert into juegos values (59,'Terraria','Minishark','Lights Bane',4.99);
insert into juegos values (60,'BANG! BANG!','NO','NO',0.49);
insert into juegos values (61,'Zeta','zzz','Zatam',29.99);
insert into juegos values (62,'Halluka','Saga HLK','Hallucard',19.99);
insert into juegos values (63,'Mortal Battle','Inmortal','krafmaga',39.99);
insert into juegos values (64,'Force Magnum','Magnum F','magma',89.99);
insert into juegos values (65,'Demons Clash','ClashD','lucifer',79.99);
insert into juegos values (66,'Sleepy','Sloopy 1','slord',59.99);
insert into juegos values (67,'Fauna','Savage','lion',29.99);
insert into juegos values (68,'Simbad','Magic Simbad','lord s',49.99);
insert into juegos values (69,'Danganronpa','Dangan','latdangan',39.99);
insert into juegos values (70,'Lets Fly','Flyyy','flyp',59.99);
insert into juegos values (71,'GeoTrash','Geo1','geogeo',49.99);


go

-- insercion de datos en la tabla compras
insert into compras values (1,1,1,1,'2009-05-14 00:00:00.000');
insert into  compras values (2,1,1,2,'2012-09-10 00:00:00.000');
insert into  compras values (3,1,2,3,'2013-04-01 00:00:00.000');
insert into  compras values (4,1,2,1,'2011-07-11 00:00:00.000');
insert into  compras values (5,1,3,1,'2015-01-01 00:00:00.000');
insert into  compras values (6,1,6,3,'2021-07-21 00:00:00.000');
insert into  compras values (7,1,5,4,'2012-05-13 00:00:00.000');
insert into  compras values (8,1,4,7,'2016-09-21 00:00:00.000');
insert into  compras values (9,1,2,3,'2013-04-01 00:00:00.000');
insert into  compras values (10,1,11,21,'2018-02-14 00:00:00.000');
insert into  compras values (11,1,12,20,'2019-05-24 00:00:00.000');
insert into  compras values (12,1,13,19,'2016-04-24 00:00:00.000');
insert into  compras values (13,1,14,18,'2021-05-14 00:00:00.000');
insert into  compras values (14,1,15,17,'2021-05-14 00:00:00.000');
insert into  compras values (15,1,16,16,'2021-05-14 00:00:00.000');
insert into  compras values (16,1,17,15,'2021-05-14 00:00:00.000');
insert into  compras values (17,1,18,14,'2021-05-14 00:00:00.000');
insert into  compras values (18,1,19,13,'2021-05-14 00:00:00.000');
insert into  compras values (19,1,20,12,'2021-05-14 00:00:00.000');
insert into  compras values (20,1,21,11,'2021-05-14 00:00:00.000');
insert into  compras values (22,1,23,23,'2020-04-24 10:00:00.000');
insert into  compras values (23,1,24,24,'2021-09-25 22:09:00.000');
insert into  compras values (24,1,25,25,'2020-03-22 15:14:00.000');
insert into  compras values (25,1,26,26,'2019-05-21 20:21:00.000');
insert into  compras values (26,1,27,27,'2020-09-22 21:45:00.000');
insert into  compras values (27,1,28,28,'2018-10-21 12:21:00.000');
insert into  compras values (28,1,29,29,'2017-09-24 23:01:00.000');
insert into  compras values (32,1,22,22,'2021-04-13 12:43:00.000');
insert into  compras values (33,1,25,35,'2020-03-22 00:00:00.000');
insert into  compras values (34,1,13,3,'2020-02-22 00:00:00.000');
insert into  compras values (35,1,43,11,'2019-03-22 00:00:00.000');
insert into  compras values (36,3,32,12,'2021-11-27 00:00:00.000');
insert into  compras values (37,3,22,42,'2021-05-22 00:00:00.000');
insert into  compras values (38,3,13,14,'2020-03-24 00:00:00.000');
insert into  compras values (39,3,1,22,'2020-03-12 00:00:00.000');
insert into  compras values (40,3,46,10,'2021-11-12 00:00:00.000');
insert into  compras values (41,3,22,11,'2021-11-13 00:00:00.000');
insert into  compras values (43,3,11,20,'2020-03-11 00:00:00.000');
insert into  compras values (44,3,45,45,'2021-06-04 00:00:00.000');
insert into  compras values (45,3,46,46,'2021-11-13 00:00:00.000');
insert into  compras values (46,3,47,47,'2021-08-02 00:00:00.000');
insert into  compras values (47,3,48,48,'2021-09-03 00:00:00.000');
insert into  compras values (48,3,50,51,'2021-10-12 00:00:00.000');
insert into  compras values (49,3,50,50,'2021-11-09 00:00:00.000');
insert into  compras values (50,3,51,51,'2021-12-08 00:00:00.000');
insert into  compras values (51,3,52,52,'2021-10-05 00:00:00.000');
insert into  compras values (52,3,53,53,'2021-09-12 00:00:00.000');
insert into  compras values (53,3,54,54,'2021-08-15 00:00:00.000');
insert into  compras values (54,3,55,55,'2021-07-17 00:00:00.000');
insert into  compras values (55,3,53,62,' 2010-10-02 00:00:00.000');
insert into  compras values (56,3,54,69,' 2013-01-10 00:00:00.000');
insert into  compras values (57,3,55,70,' 2012-10-08 00:00:00.000');
insert into  compras values (58,3,56,61,' 2014-07-09 00:00:00.000');
insert into  compras values (59,3,57,64,' 2012-06-11 00:00:00.000');
insert into  compras values (60,3,58,67,' 2015-02-15 00:00:00.000');
insert into  compras values (61,3,59,68,' 2014-07-02 00:00:00.000');
insert into  compras values (62,3,60,63,' 2013-08-07 00:00:00.000');
insert into  compras values (63,3,61,66,' 2015-10-09 00:00:00.000');
insert into  compras values (64,3,62,61,' 2012-11-14 00:00:00.000');
insert into  compras values (65,3,63,65,' 2012-01-16 00:00:00.000');

insert into  compras values (66,3,63,2,'2012-01-16 00:00:00.000');

go

-- creacion de vistas mas sus consultas

--chequeo de compra
create view chequeocompra 
as
SELECT DISTINCT dbo.clientes.cliente, dbo.juegos.juegos AS [Juego Comprado], dbo.compras.fechac AS Dia, dbo.usuarios.nombre AS Vendedor
FROM            dbo.clientes INNER JOIN
                         dbo.compras ON dbo.clientes.id_cliente = dbo.compras.id_cliente INNER JOIN
                         dbo.juegos ON dbo.compras.id_juegos = dbo.juegos.id_juego INNER JOIN
                         dbo.usuarios ON dbo.compras.id_usuario = dbo.usuarios.id_usuario CROSS JOIN
                         dbo.trans
go
-- prueba de view chequeocompra

select * from chequeocompra

go
-- prueba de view registro de usuario
create view REGUS
as
SELECT DISTINCT dbo.usuarios.nombre AS Encargado, dbo.usuarios.especialidad AS Encargo, dbo.clientes.correo AS [Correo agregado], dbo.clientes.fecha_registro AS [Fecha de registro de Usuario]
FROM            dbo.clientes INNER JOIN
                         dbo.compras ON dbo.clientes.id_cliente = dbo.compras.id_cliente INNER JOIN
                         dbo.juegos ON dbo.compras.id_juegos = dbo.juegos.id_juego INNER JOIN
                         dbo.usuarios ON dbo.compras.id_usuario = dbo.usuarios.id_usuario CROSS JOIN
                         dbo.trans
WHERE        (dbo.usuarios.especialidad = 'tablas')

GO
--Prueba

select * from REGUS

GO

-- view de chequeocompra
create view chequecoma
as 
SELECT DISTINCT dbo.clientes.correo, dbo.juegos.juegos AS [Juego Comprado], dbo.juegos.precio, dbo.usuarios.nombre AS Especialista, dbo.usuarios.especialidad AS Puesto, dbo.trans.fecha AS [Dia de comprobacion]
FROM            dbo.clientes INNER JOIN
                         dbo.compras ON dbo.clientes.id_cliente = dbo.compras.id_cliente INNER JOIN
                         dbo.juegos ON dbo.compras.id_juegos = dbo.juegos.id_juego INNER JOIN
                         dbo.usuarios ON dbo.compras.id_usuario = dbo.usuarios.id_usuario CROSS JOIN
                         dbo.trans
WHERE        (dbo.usuarios.especialidad = 'becario')

go

-- prueba de view

select * from chequecoma
go


-- creacion de indices

create nonclustered index inJu2
on juegos (juegos) 
go
create nonclustered index inusu2
on clientes (cliente)
go
-- consulta de indices
execute sp_helpindex 'juegos'
go
execute sp_helpindex 'clientes'
go

--tabla donde se almacena los trigger
create table trans 
 (
 fecha datetime   not null,
 id_cliente int  not null,
 id_usuario int  not null,
id_juegos int  not null,
descripcion varchar (100)  not null,
 );

 -- trigger de insert
 create trigger tr_transin
 on compras for insert
 as
 declare @id_cliente int,
 @id_juegos int,
 @id_usuarios int
 select @id_cliente = id_cliente from inserted
 select @id_usuarios = id_usuario from inserted
 select @id_juegos = id_juegos from inserted
  
  insert into trans values (getdate(),@id_cliente,@id_usuarios,@id_juegos,'registro insertado')
go
--trigger de delete
 create trigger tr_transde
 on compras for delete
 as
 declare @id_cliente int,
 @id_juegos int,
 @id_usuarios int
 select @id_cliente = id_cliente from deleted
 select @id_juegos = id_juegos from deleted
  select @id_usuarios = id_usuario from deleted
  insert into trans values (getdate(),@id_cliente,@id_usuarios,@id_juegos,'registro eliminao')
go

-- trigger de update
 create trigger tr_transup
 on compras for update 
 as
 declare @id_cliente int,
 @id_juegos int,
 @id_usuarios int
 select @id_cliente = id_cliente from inserted
 select @id_juegos = id_juegos from inserted
 select @id_usuarios = id_usuario from inserted
  insert into trans values (getdate(),@id_cliente,@id_usuarios,@id_juegos,'registro actualizado')
go


-- prueba de trigger 
select * from trans

delete from compras where id=21
insert into compras values (21,1,11,'2020-06-14 00:00:00.000');
update compras set id_cliente = 2
where id=21


select * from clientes
select * from compras

go

--creacion de funciones 
CREATE FUNCTION fecha 
(
@valor AS DATETIME
)
RETURNS VARCHAR(MAX)
AS
BEGIN
RETURN
  DATENAME(DW, @valor)+ ', '+
  DATENAME(day, @valor)+ ' '+
  DATENAME(MONTH, @valor) +', '+
  DATENAME(YEAR, @valor)
END
go
--prueba de las funciones
SELECT id_cliente, dbo.fecha(fechac) as fecha from compras
go


--creacion de procedimientos almacenados
create proc buscarjuegos
  @juego varchar(19) = '%%'

 as 
  select juegos
   from juegos
   where juegos like @juego;

   go

--ejecucion del procedure
exec buscarjuegos '%p%'

go

--creacion de procedimientos almacenados2.0
create proc buscarprecios
  @precio1 money,
  @precio2 money
 as 
  select juegos,precio
   from juegos
   where precio between @precio1 and @precio2 ;
   
   go 
   -- ejecucion del procedimiento 2.0
   exec buscarprecios 10,35

--teoria
select juegos from juegos where juegos like '%m%'
--teoria
select juegos,precio from juegos where precio between 50 and 60 
order by precio desc


select id_cliente,fechac from compras 
go
