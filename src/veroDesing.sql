DROP DATABASE IF EXISTS veroDesing;
CREATE DATABASE veroDesing;
USE veroDesing;

CREATE TABLE clientes(
  id_cliente int AUTO_INCREMENT,
  cliente varchar(255) NOT NULL,
  attn varchar(255),
  tlf varchar(255),
  direccion varchar(255),
  email varchar(255),
  UNIQUE (cliente),
  PRIMARY KEY(id_cliente)
  );
CREATE TABLE ficheros(
  id_fichero int AUTO_INCREMENT,
  formato varchar(255) NOT NULL,
  tipo_archivo varchar(127),
  descripcion varchar(255),
  soporte varchar(255),
  estilo varchar (255),
  f_inicio date,
  f_entrega date,
  ruta varchar(255),
  PRIMARY KEY(id_fichero)
  );
CREATE TABLE proveedores(
  id_proveedor int AUTO_INCREMENT,
  prooveedor varchar(255),
  PRIMARY KEY(id_proveedor)
  );
CREATE TABLE tipografias(
  id_tipografia int AUTO_INCREMENT,
  tipografia varchar(255) NOT NULL,
  PRIMARY KEY(id_tipografia)
  );
 CREATE TABLE tintas(
  id_tinta int AUTO_INCREMENT,
  tinta varchar(255) NOT NULL,
  pantone varchar(255),
  primary KEY(id_tinta)
  );
CREATE TABLE imagenes(
  id_imagen int AUTO_INCREMENT,
  imagen varchar(255),
  ruta varchar(255),
  PRIMARY KEY(id_imagen)
  );
CREATE TABLE encargan(
  id_cliente int,
  id_fichero int,
  PRIMARY KEY (id_cliente, id_fichero),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
  FOREIGN KEY (id_fichero) REFERENCES ficheros(id_fichero)
  );
CREATE TABLE proveen(
  id_proovedor int,
  id_fichero int,
  PRIMARY KEY (id_proovedor, id_fichero),
  FOREIGN KEY (id_proovedor) REFERENCES proovedores(id_proovedor),
  FOREIGN KEY (id_fichero) REFERENCES ficheros(id_fichero)
  );
CREATE TABLE fich_tipo(
  id_tipografia int,
  id_fichero int,
  PRIMARY KEY (id_tipografia, id_fichero),
  FOREIGN KEY (id_tipografia) REFERENCES tipografias(id_tipografia),
  FOREIGN KEY (id_fichero) REFERENCES ficheros(id_fichero)
  );
CREATE TABLE fich_img(
  id_imagen int,
  id_fichero int,
  PRIMARY KEY (id_imagen, id_fichero),
  FOREIGN KEY (id_imagen) REFERENCES imagenes(id_imagen),
  FOREIGN KEY (id_fichero) REFERENCES ficheros(id_fichero)
  );
CREATE TABLE corp_img(
  id_imagen int,
  id_cliente int,
  PRIMARY KEY (id_imagen, id_cliente),
  FOREIGN KEY (id_imagen) REFERENCES imagenes(id_imagen),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
  );
CREATE TABLE corp_tinta(
  id_tinta int,
  id_cliente int,
  PRIMARY KEY (id_tinta, id_cliente),
  FOREIGN KEY (id_tinta) REFERENCES tintas(id_tinta),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
  );
CREATE TABLE corp_tipo(
  id_tipografia int,
  id_cliente int,
  PRIMARY KEY (id_tipografia, id_cliente),
  FOREIGN KEY (id_tipografia) REFERENCES tipografias(id_tipografia),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
  );
CREATE TABLE fich_tinta(
  id_tinta int,
  id_fichero int,
  PRIMARY KEY (id_tinta, id_fichero),
  FOREIGN KEY (id_tinta) REFERENCES tintas(id_tinta),
  FOREIGN KEY (id_fichero) REFERENCES ficheros(id_fichero)
  );

    
    
     











