CREATE DATABASE taxiseguro;
use taxiseguro;
CREATE TABLE conductor (
  idconductor int(11) NOT NULL AUTO_INCREMENT,
  nombres varchar(45) NOT NULL,
  apellidos varchar(100) NOT NULL,
  dni char(8) NOT NULL,
  telefono varchar(15) NOT NULL,
  email varchar(100) DEFAULT NULL,
  direccion varchar(200) NOT NULL,
  numlicencia varchar(30) DEFAULT NULL,
  fecnaci date DEFAULT NULL,
  foto varchar(255) DEFAULT NULL,
  PRIMARY KEY (idconductor)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table cliente(
idcliente int not null auto_increment,
nombres varchar(60) not null,
apellidos varchar(60) not null,
telefono varchar(15),
email varchar(160),
dni char(8) not null,
ciudad varchar(60),
passwd varchar(255) not null,
PRIMARY KEY(idcliente)
)ENGINE=InnoDB DEFAULT CHARSET=utf8

create table auto(
idauto int not null auto_increment,
marca varchar(20) not null,
modelo varchar(20) not null,
placa varchar(20) not null,
color varchar(20) not null,
año char(4) not null,
PRIMARY KEY(idauto)
)ENGINE=InnoDB DEFAULT CHARSET=utf8

create table pedirmovilidad(
idpedir int not null auto_increment,
idcliente int not null,
idauto int not null,
direccion varchar(255) not null,
referencia varchar(255),
otro varchar(255),
tipouni varchar(40),
fecPedido datetime,
estado boolean default true,
fecTermino datetime,
calificacion int,
PRIMARY KEY(idpedir)
)ENGINE=InnoDB DEFAULT CHARSET=utf8

create table pedirdelivery(
iddelivery int not null auto_increment,
idcliente int not null,
idauto int not null,
direccion varchar(255) not null,
referencia varchar(255),
delivery varchar(255) not null,
otro varchar(255),
fecPedido datetime,
estado boolean default true,
fecTermino datetime,
calificacion int,
PRIMARY KEY(iddelivery)
)ENGINE=InnoDB DEFAULT CHARSET=utf8

create table reservar(
idreserva int not null auto_increment,
idcliente int not null,
idauto int not null,
direccion varchar(255) not null,
referencia varchar(255),
hora varchar(20) not null,
otro varchar(255),
fecPedido datetime,
estado boolean default true,
fecTermino datetime,
calificacion int,
PRIMARY KEY(idreserva)
)ENGINE=InnoDB DEFAULT CHARSET=utf8

create table consultas(
idconsulta int not null auto_increment,
consulta varchar(255) not null,
fecconsulta datetime,
estado boolean default true,
fecRespuesta datetime,
idpersonal int not null,
PRIMARY KEY(idconsulta)
)ENGINE=InnoDB DEFAULT CHARSET=utf8