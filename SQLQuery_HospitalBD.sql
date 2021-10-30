--Nestor Alexis Zamora Orellana

--Creamos la Base de Datos
create database HospitalBD;
use HospitalBD;

--Tabla sexo
create table Sexo(
id_sexo integer NOT NULL identity (1,1) primary key,
N_Sexo varchar(10)NOT NULL,
);

--Tabla Telefono
create table Telefono(
id_telefono integer NOT NULL identity (1,1) primary key,
Telefono int not null,
Codigo_area int not null
);

--Tabla Datos de Paciente como su domicilio
create table Datos_P(
id_Datos_personales integer NOT NULL identity (1,1) primary key,
N_Provincia varchar(50)NOT NULL,
Domicilio varchar(50)NOT NULL,
Código_postal int,
);


--Tabla Paciente
create table Paciente(
id_Número_historial_clínico integer NOT NULL identity (1,1) primary key,
Nombre_Paciente varchar(50)NOT NULL,
Apellido_Paciente varchar(50)NOT NULL,
NumeroSeguridadSocial int Not Null,
Observaciones varchar(100),
id_sexo integer foreign key (id_sexo) references Sexo(id_sexo) NOT NULL,
id_telefono integer foreign key (id_telefono) references Telefono(id_telefono) NOT NULL,
id_Datos_personales integer foreign key (id_Datos_personales) references Datos_P(id_Datos_personales) NOT NULL
);
--Tabla Especialidad
create table Especialidad(
id_Especi integer NOT NULL identity (1,1) primary key,
Es_Nombre varchar(50)NOT NULL
);
--Tabla Cargo
create table Cargo(
id_C integer NOT NULL identity (1,1) primary key,
Nombre_Cargo varchar(50)NOT NULL 
);
--Tabla Medicos
create table Medicos(
id_Código_identificación_médico integer NOT NULL identity (1,1) primary key,
Nombre varchar(50)NOT NULL,
Apellidos varchar(50)NOT NULL,
Número_colegiado int not null,
Observaciones varchar(100) not null,
id_C integer foreign key (id_C) references Cargo(id_C)  NOT NULL,
id_Especi integer foreign key (id_Especi) references Especialidad(id_Especi) NOT NULL
);

--Tabla Numero de planta y cama
create table N_Planta_Cama(
id_PC integer NOT NULL identity (1,1) primary key,
Número_planta int not null,
Número_cama int not null
);

--Tabla Ingresos
create table Ingresos(
Id_Ingresos integer NOT NULL identity (1,1) primary key,
Fecha_ingreso Date not null,
Observaciones varchar(100)NOT NULL,
id_PC integer foreign key (id_PC) references N_Planta_Cama(id_PC)  NOT NULL,
id_Número_historial_clínico integer foreign key (id_Número_historial_clínico) references Paciente(id_Número_historial_clínico) NOT NULL,
id_Código_identificación_médico integer foreign key (id_Código_identificación_médico) references Medicos(id_Código_identificación_médico)NOT NULL
);

--Insertamos datos a la tabla Sexo
insert into Sexo Values('Masculino');

insert into Sexo Values('Femenino');

--Insertamos datos a la tabla Telefono
insert into Telefono values(78124565,503);
insert into Telefono values(77553322,503);
insert into Telefono values(60521235,503);
insert into Telefono values(74102586,502);
insert into Telefono values(75301456,502);
insert into Telefono values(60005232,503);
insert into Telefono values(70025619,503);
insert into Telefono values(79995623,503);
insert into Telefono values(65321456,502);
insert into Telefono values(66668956,502);

--Insertamos datos a la tabla Datos_P
insert into Datos_P values('Chalatenango','Barrio la Sierpe',0407);
insert into Datos_P values('Chalatenango','Barrio San Jose',0407);
insert into Datos_P values('Chalatenango,Arcatao','Barrio Maria',0402);
insert into Datos_P values('Chalatenango','Barrio El Clavario',0407);
insert into Datos_P values('Chalatenango','Reubicacion 2',0407);
insert into Datos_P values('Chalatenango','Colina Fatima,casa 23',0407);
insert into Datos_P values('Chalatenango','Barrio San Antonio casa 55',0407);
insert into Datos_P values('Chalatenango,','Colina los Pinares 65',0407);
insert into Datos_P values('Chalatenango','Barrio El Clavario 74',0407);
insert into Datos_P values('Chalatenango','Reubicacion 3',0407);


--Insertamos datos a la tabla Paciente
insert into Paciente values('Alexi','Vides',0012,'Alergico',1,1,1);
insert into Paciente values('Anderson','Alvarado',0011,'Ninguna',1,2,2);
insert into Paciente values('Adriana','Orellana',0013,'Alergica',2,3,3);
insert into Paciente values('Daniel','Tejada',0014,'Ninguno',1,4,4);
insert into Paciente values('Jasmin','Lopez',0015,'Alergico',2,5,5);
insert into Paciente values('Rocio','Vasquez',0016,'Alergico',2,6,6);
insert into Paciente values('Mayerli','Martinez',0017,'Alergico',2,7,7);
insert into Paciente values('Nestor','Zamora',0018,'Ninguno',1,8,8);
insert into Paciente values('Kevin','Navarro',0019,'Ninguna',1,9,9);
insert into Paciente values('Alfredo','Guardado',0020,'Ninguno',1,10,10);


--Insertamos en la tabla Especialidad
insert into Especialidad values ('Anestesiología');
insert into Especialidad values ('Anatomía Patológica');
insert into Especialidad values ('Cardiología');
insert into Especialidad values ('Cardiología Intervencionista');
insert into Especialidad values ('Cirugía Pediátrica');
insert into Especialidad values ('Cirugía General');
insert into Especialidad values ('Cirugía Plástica y Reconstructiva');
insert into Especialidad values ('Dermatología');
insert into Especialidad values ('Endoscopia');
insert into Especialidad values ('Gastroenterología');


--Insertamos en la tabla Cargo
insert into Cargo values('Doctor');
insert into Cargo values('Enfermero');
insert into Cargo values('Farmacéutico');
insert into Cargo values('Trabajador social de oncología');
insert into Cargo values('Psicólogo');
insert into Cargo values('Psiquiatra');
insert into Cargo values('Terapeuta ocupacional');
insert into Cargo values('Fisioterapeutista');


--Insertamos en la tabla Medicos
insert into Medicos values('Isaac','Perez',101,'Ninguna',2,3);
insert into Medicos values('Roxana','Figueroa',102,'Ninguna',3,1);
insert into Medicos values('Jonatahn','Gonzales',103,'Ninguna',4,2);
insert into Medicos values('Alex','Lozano',104,'Ninguna',5,4);
insert into Medicos values('Miguel','Lopez',105,'Ninguna',6,5);
insert into Medicos values('Ingrid','Menjivar',106,'Ninguna',7,6);


--Insertamos en la tabla N_Planta_Cama
insert into N_Planta_Cama values (1,1);
insert into N_Planta_Cama values (1,2);---
insert into N_Planta_Cama values (1,3);
insert into N_Planta_Cama values (1,4);--
insert into N_Planta_Cama values (1,5);--
insert into N_Planta_Cama values (1,6);
insert into N_Planta_Cama values (1,7);--
insert into N_Planta_Cama values (2,1);--
insert into N_Planta_Cama values (2,2);
insert into N_Planta_Cama values (2,3);--
insert into N_Planta_Cama values (2,4);
insert into N_Planta_Cama values (2,5);--
insert into N_Planta_Cama values (2,6);--
insert into N_Planta_Cama values (2,7);--
insert into N_Planta_Cama values (2,8);
insert into N_Planta_Cama values (2,9);--
insert into N_Planta_Cama values (2,10);


--Insertamos en la tabla Ingresos
insert into Ingresos values('2021-10-29','Lesion',1,1,1);
insert into Ingresos values('2021-10-29','Lesion',2,2,1);
insert into Ingresos values('2021-10-28','Gripe',3,3,2);
insert into Ingresos values('2021-10-27','Fractura',4,4,2);
insert into Ingresos values('2021-10-26','Lesion',5,5,3);

insert into Ingresos values('2021-10-25','Embarazo',6,6,3);
insert into Ingresos values('2021-10-24','Covid',7,7,4);
insert into Ingresos values('2021-10-23','Fiebre',8,8,4);
insert into Ingresos values('2021-10-22','Fractura',9,9,5);
insert into Ingresos values('2021-10-21','Operacion',10,10,6);

insert into Ingresos values('2021-10-20','Covid',11,1,6);
insert into Ingresos values('2021-10-19','Covid',12,2,5);
insert into Ingresos values('2021-10-18','Gripe',13,3,5);
insert into Ingresos values('2021-10-17','Accidente',14,5,1);
insert into Ingresos values('2021-10-16','Embarazo',15,10,2);

insert into Ingresos values('2021-10-15','Covid',16,6,5);
insert into Ingresos values('2021-10-14','Covid',17,7,5);





