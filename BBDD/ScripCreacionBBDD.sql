DROP TABLE CUENTAS CASCADE CONSTRAINTS;
DROP TABLE DUE�O CASCADE CONSTRAINTS;
DROP TABLE ADMINISTRADOR CASCADE CONSTRAINTS;
DROP TABLE USUARIO CASCADE CONSTRAINTS;
DROP TABLE EQUIPO CASCADE CONSTRAINTS;
DROP TABLE LIGA CASCADE CONSTRAINTS;
DROP TABLE JORNADA CASCADE CONSTRAINTS;
DROP TABLE JUGADOR CASCADE CONSTRAINTS;
DROP TABLE PARTIDO CASCADE CONSTRAINTS;

CREATE TABLE CUENTAS (
    COD_CUENTA   NUMBER(3) NOT NULL,
    NOMBRE       VARCHAR2(20) NOT NULL,
    APELLIDO     VARCHAR2(20) NOT NULL,
    USUARIO      VARCHAR2(20) NOT NULL,
    CONTRASE�A   VARCHAR2(15) NOT NULL,
    CONSTRAINT CUENTAS_PK PRIMARY KEY ( COD_CUENTA )
);

CREATE TABLE DUE�O (
    COD_CUENTA   NUMBER(3) NOT NULL,
    TELEFONO     NUMBER(9) NOT NULL,
    CONSTRAINT DUE�O_PK PRIMARY KEY ( COD_CUENTA ),
    CONSTRAINT DUE�O_CUENTAS_FK FOREIGN KEY ( COD_CUENTA )
        REFERENCES CUENTAS ( COD_CUENTA )
);

CREATE TABLE ADMINISTRADOR (
    COD_CUENTA NUMBER(3) NOT NULL,
    CONSTRAINT ADMINISTRADOR_PK PRIMARY KEY ( COD_CUENTA ),
    CONSTRAINT ADMINISTRADOR_CUENTAS_FK FOREIGN KEY ( COD_CUENTA )
        REFERENCES CUENTAS ( COD_CUENTA )
);

CREATE TABLE USUARIO (
    COD_CUENTA NUMBER(3) NOT NULL,
    CONSTRAINT USUARIO_PK PRIMARY KEY ( COD_CUENTA ),
    CONSTRAINT USUARIO_CUENTAS_FK FOREIGN KEY ( COD_CUENTA )
        REFERENCES CUENTAS ( COD_CUENTA )
);

CREATE TABLE EQUIPO (
    COD_EQUIPO         NUMBER(3) NOT NULL,
    NOMBRE             VARCHAR2(20) NOT NULL,
    NACIONALIDAD       VARCHAR2(20) NOT NULL,
    PRESUPUESTO        NUMBER(6) NOT NULL,
    DUE�O_COD_CUENTA   NUMBER(3) NOT NULL,
    PUNTUACION         NUMBER(3) NOT NULL,
    CONSTRAINT EQUIPO_PK PRIMARY KEY ( COD_EQUIPO ),
    CONSTRAINT EQUIPO_DUE�O_FK FOREIGN KEY ( DUE�O_COD_CUENTA )
        REFERENCES DUE�O ( COD_CUENTA )
);

CREATE TABLE LIGA (
    COD_LIGA       NUMBER(3) NOT NULL,
    NOMBRE         VARCHAR2(20) NOT NULL,
    FECHA_INICIO   DATE NOT NULL,
    FECHA_FIN      DATE NOT NULL,
    ESTADO         NUMBER(1) NOT NULL,
    CONSTRAINT LIGA_PK PRIMARY KEY ( COD_LIGA )
);

CREATE TABLE JORNADA (
    COD_JORNADA     NUMBER(3) NOT NULL,
    FECHA_INICIO    DATE NOT NULL,
    FECHA_FIN       DATE NOT NULL,
    LIGA_COD_LIGA   NUMBER(3) NOT NULL,
    CONSTRAINT JORNADA_PK PRIMARY KEY ( COD_JORNADA ),
    CONSTRAINT JORNADA_LIGA_FK FOREIGN KEY ( LIGA_COD_LIGA )
        REFERENCES LIGA ( COD_LIGA )
);

CREATE TABLE JUGADOR (
    COD_JUGADOR         NUMBER(3) NOT NULL,
    NOMBRE              VARCHAR2(20) NOT NULL,
    APELLIDO            VARCHAR2(20) NOT NULL,
    NICKNAME            VARCHAR2(20) NOT NULL,
    SUELDO              NUMBER(6) NOT NULL,
    NACIONALIDAD        VARCHAR2(20) NOT NULL,
    ESTADO              VARCHAR2(20) NOT NULL,
    TELEFONO            NUMBER(9) NOT NULL,
    EQUIPO_COD_EQUIPO   NUMBER(3) NOT NULL,
    CONSTRAINT JUGADOR_PK PRIMARY KEY ( COD_JUGADOR ),
    CONSTRAINT JUGADOR_EQUIPO_FK FOREIGN KEY ( EQUIPO_COD_EQUIPO )
        REFERENCES EQUIPO ( COD_EQUIPO )
);

CREATE TABLE PARTIDO (
    EQUIPO_COD_EQUIPO     NUMBER(3) NOT NULL,
    JORNADA_COD_JORNADA   NUMBER(3) NOT NULL,
    RESULTADO             NUMBER(3) NOT NULL,
    FECHA_PARTIDO         DATE NOT NULL,
    EQUIPO_VISITANTE      NUMBER(3) NOT NULL,
    CONSTRAINT PARTIDO_PK PRIMARY KEY ( EQUIPO_COD_EQUIPO,JORNADA_COD_JORNADA ),
    CONSTRAINT PARTIDO_EQUIPO_FK FOREIGN KEY ( EQUIPO_COD_EQUIPO )
        REFERENCES EQUIPO ( COD_EQUIPO ),
    CONSTRAINT PARTIDO_JORNADA_FK FOREIGN KEY ( JORNADA_COD_JORNADA )
        REFERENCES JORNADA ( COD_JORNADA )
);

