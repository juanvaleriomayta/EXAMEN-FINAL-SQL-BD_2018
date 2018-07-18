CREATE DATABASE EMPRESATJ
GO
USE EMPRESATJ
GO 

-- Table: ALUMNOS
CREATE TABLE ALUMNOS (
    id_Alumnos int IDENTITY(1,1),
    tipo_Alumnos varchar(50) ,
    hora_Alumnos varchar(50) ,
    APODERADOS_id_Apoderados int ,
    CONSTRAINT ALUMNOS_pk PRIMARY KEY  (id_Alumnos)
);

-- Table: APODERADOS
CREATE TABLE APODERADOS (
    id_Apoderados int IDENTITY(1,1),
    modls_Apoderado varchar(50) ,
    ALUMNOS_id_Alumnos int ,
    SERVICIOS_id_Servicios int ,
    CONSTRAINT APODERADOS_pk PRIMARY KEY  (id_Apoderados)
);

-- Table: ASISTENTES
CREATE TABLE ASISTENTES (
    id_Asistente int IDENTITY(1,1),
    turno_Asistente varchar(50) ,
    CHOFERES_id_Choferes int ,
    CONSTRAINT ASISTENTES_pk PRIMARY KEY  (id_Asistente)
);

-- Table: CHOFERES
CREATE TABLE CHOFERES (
    id_Choferes int IDENTITY(1,1),
    turno_Choferes varchar(50) ,
    ASISTENTES_id_Asistente int ,
    CONSTRAINT CHOFERES_pk PRIMARY KEY  (id_Choferes)
);

-- Table: COLEGIO
CREATE TABLE COLEGIO (
    id_Colegio int IDENTITY(1,1),
    direccion_Colegio varchar(50) ,
    turno_Colegio varchar(50) ,
    MINIBUS_id_MiniBus int ,
    CONSTRAINT COLEGIO_pk PRIMARY KEY  (id_Colegio)
);

-- Table: MINIBUS
CREATE TABLE MINIBUS (
    id_MiniBus int IDENTITY(1,1),
    count_MiniBus char(3) ,
    color_MiniBus varchar(50) ,
    capacid_MiniBus varchar(50) ,
    CHOFERES_id_Choferes int ,
    ASISTENTES_id_Asistente int ,
    ALUMNOS_id_Alumnos int ,
    SERVICIOS_id_Servicios int ,
    COLEGIO_id_Colegio int ,
    CONSTRAINT MINIBUS_pk PRIMARY KEY  (id_MiniBus)
);

-- Table: SERVICIOS
CREATE TABLE SERVICIOS (
    id_Servicios int IDENTITY(1,1),
    period_Servicios varchar(50) ,
    recorrido_Servicios varchar(50) ,
    CONSTRAINT SERVICIOS_pk PRIMARY KEY  (id_Servicios)
);

-- foreign keys
-- Reference: ALUMNOS_APODERADOS (table: ALUMNOS)
ALTER TABLE ALUMNOS ADD CONSTRAINT ALUMNOS_APODERADOS
    FOREIGN KEY (APODERADOS_id_Apoderados)
    REFERENCES APODERADOS (id_Apoderados);

-- Reference: APODERADOS_ALUMNOS (table: APODERADOS)
ALTER TABLE APODERADOS ADD CONSTRAINT APODERADOS_ALUMNOS
    FOREIGN KEY (ALUMNOS_id_Alumnos)
    REFERENCES ALUMNOS (id_Alumnos);

-- Reference: APODERADOS_SERVICIOS (table: APODERADOS)
ALTER TABLE APODERADOS ADD CONSTRAINT APODERADOS_SERVICIOS
    FOREIGN KEY (SERVICIOS_id_Servicios)
    REFERENCES SERVICIOS (id_Servicios);

-- Reference: ASISTENTES_CHOFERES (table: ASISTENTES)
ALTER TABLE ASISTENTES ADD CONSTRAINT ASISTENTES_CHOFERES
    FOREIGN KEY (CHOFERES_id_Choferes)
    REFERENCES CHOFERES (id_Choferes);

-- Reference: CHOFERES_ASISTENTES (table: CHOFERES)
ALTER TABLE CHOFERES ADD CONSTRAINT CHOFERES_ASISTENTES
    FOREIGN KEY (ASISTENTES_id_Asistente)
    REFERENCES ASISTENTES (id_Asistente);

-- Reference: COLEGIO_MINIBUS (table: COLEGIO)
ALTER TABLE COLEGIO ADD CONSTRAINT COLEGIO_MINIBUS
    FOREIGN KEY (MINIBUS_id_MiniBus)
    REFERENCES MINIBUS (id_MiniBus);

-- Reference: MINIBUS_ALUMNOS (table: MINIBUS)
ALTER TABLE MINIBUS ADD CONSTRAINT MINIBUS_ALUMNOS
    FOREIGN KEY (ALUMNOS_id_Alumnos)
    REFERENCES ALUMNOS (id_Alumnos);

-- Reference: MINIBUS_ASISTENTES (table: MINIBUS)
ALTER TABLE MINIBUS ADD CONSTRAINT MINIBUS_ASISTENTES
    FOREIGN KEY (ASISTENTES_id_Asistente)
    REFERENCES ASISTENTES (id_Asistente);

-- Reference: MINIBUS_CHOFERES (table: MINIBUS)
ALTER TABLE MINIBUS ADD CONSTRAINT MINIBUS_CHOFERES
    FOREIGN KEY (CHOFERES_id_Choferes)
    REFERENCES CHOFERES (id_Choferes);

-- Reference: MINIBUS_COLEGIO (table: MINIBUS)
ALTER TABLE MINIBUS ADD CONSTRAINT MINIBUS_COLEGIO
    FOREIGN KEY (COLEGIO_id_Colegio)
    REFERENCES COLEGIO (id_Colegio);

-- Reference: MINIBUS_SERVICIOS (table: MINIBUS)
ALTER TABLE MINIBUS ADD CONSTRAINT MINIBUS_SERVICIOS
    FOREIGN KEY (SERVICIOS_id_Servicios)
    REFERENCES SERVICIOS (id_Servicios);

-- End of file.

