drop database if exists getup;
create database if not exists getup;
drop table if exists users;
create table users (
	correo			varchar(255) primary key,
    passwd	        varchar(255) not null,
    nombre      	varchar(255) not null,
    fechanac		date not null,
    intereses   	varchar(255) DEFAULT 'null' comment 'que intereses tiene con la encuesta inicial',
    icono			varchar(255) null
);

drop table if exists evento;
create table evento (
	id				int primary key,
    fecha   		date not null,
    horainic   		int not null,
    nombre      	varchar(255) not null,
    lugar           varchar(255) not null comment 'lugar general',
    imagen          varchar(255),
    descripcion     varchar(255),
    precio          int
);

drop table if exists categoria;
create table categoria (
	id				int primary key auto_increment,
    nombre          varchar(255)
);

drop table if exists subcategoria;
create table subcategoria (
	id				int primary key auto_increment,
	id_categoria    int not null,
    nombre          varchar(255),
    foreign key (id_categoria) references categoria(id)
    on update cascade on delete restrict
);

drop table if exists parteevento;
create table parteevento (
	id				int primary key,
	id_evento       int not null,
	id_subcategoria int not null,
    horainic   		int not null,
    nombre      	varchar(255) not null,
    lugar           varchar(255) not null,
    descripcion     varchar(255),
    puntos          int,
    foreign key (id_evento) references evento(id)
    on update cascade on delete restrict,
    foreign key (id_subcategoria) references subcategoria(id)
    on update cascade on delete restrict
);


/* Inserts */
insert into categoria(nombre) 
values ('Pel·lícules'),
		('Esports'),
        ('Gastronomia'),
        ('Activitats grupals'),
        ('Animals'),
        ('Cultura'),
        ('Tecnologia i informàtica')
;

insert into subcategoria(id_categoria,nombre) 
values (1,'Terror'),
        (1,'Comèdia'),
        (1,'Amor'),
		(2,'Curses'),
        (2,'Natació'),
        (2,'Petanca'),
        (3,'Mediterrània'),
        (3,'Japonesa'),
        (3,'Italià'),
        (4,'Poca gent'),
        (4,'Molta gent'),
        (5,'Gossos'),
        (5,'Gats'),
        (5,'Coloms'),
        (6,'Història moderna'),
        (6,'Història antiga'),
        (6,'Poesia'),
        (7,'League of legends'),
        (7,'Pokemón'),
        (7,'Xerrades')
;

select c.nombre, s.nombre from categoria as c inner join subcategoria as s on c.id = s.id_categoria;


/*
drop table if exists equipaments;
create table equipaments (
    nombre  		varchar(150),
    direccion		varchar(150),
	categoria		varchar(150),
    tipos	        varchar(200),
    descripcion		varchar(500),
    wkt             varchar(255),
    lat             varchar(255),
    lng             varchar(255)
) engine=MyISAM;*/
/*
load data local infile '/home/eurion/Documentos/Hackathos/csv/equipaments_tots.csv'
into table equipaments
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;*/
