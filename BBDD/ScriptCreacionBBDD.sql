/*DROP PACKAGE PAQ_MUTANTE;
DROP TRIGGER TRIG_TRIGGERSMUTANTE;
DROP TRIGGER TRIG_TRIGGERSMUTANTE_EQUIPO;
DROP TRIGGER TRIG_MAXJUGADORES;
DROP TRIGGER TRIG_SAL_MIN_JUGADOR;
DROP TRIGGER TRIG_SAL_MAX_EQUIPO;
DROP TRIGGER TRIG_NO_JUGADORES;
DROP TRIGGER TRIG_NO_MODIF_EQUIPO;
DROP TRIGGER TRIG_NO_MODIF_JUG;
DROP TRIGGER TRIG_SUELDOTOTALEQUIPO;
DROP TRIGGER TRIG_MAXEQUIPOS;*/
DROP TABLE DUE�O CASCADE CONSTRAINTS;
DROP TABLE ADMINISTRADOR CASCADE CONSTRAINTS;
DROP TABLE USUARIO CASCADE CONSTRAINTS;
DROP TABLE EQUIPO CASCADE CONSTRAINTS;
DROP TABLE LIGA CASCADE CONSTRAINTS;
DROP TABLE JORNADA CASCADE CONSTRAINTS;
DROP TABLE JUGADOR CASCADE CONSTRAINTS;
DROP TABLE PARTIDO CASCADE CONSTRAINTS;

CREATE TABLE DUE�O (
    COD_DUE�O   NUMBER(3) GENERATED ALWAYS AS IDENTITY,
    NOMBRE       VARCHAR2(20) NOT NULL,
    APELLIDO     VARCHAR2(20) NOT NULL,
    TELEFONO     VARCHAR2(9) NOT NULL,
    CONSTRAINT DUE�O_PK PRIMARY KEY ( COD_DUE�O )
);

CREATE TABLE ADMINISTRADOR (
    COD_ADMIN NUMBER(3) GENERATED ALWAYS AS IDENTITY,
    USUARIO      VARCHAR2(20) NOT NULL,
    CONTRASE�A   VARCHAR2(15) NOT NULL,
    CONSTRAINT ADMINISTRADOR_PK PRIMARY KEY ( COD_ADMIN )
);

CREATE TABLE USUARIO (
    COD_USUARIO NUMBER(3) GENERATED ALWAYS AS IDENTITY,
    USUARIO      VARCHAR2(20) NOT NULL,
    CONTRASE�A   VARCHAR2(15) NOT NULL,
    CONSTRAINT USUARIO_PK PRIMARY KEY ( COD_USUARIO )
);

CREATE TABLE EQUIPO (
    COD_EQUIPO         NUMBER(3) GENERATED ALWAYS AS IDENTITY,
    NOMBRE             VARCHAR2(20) NOT NULL,
    NACIONALIDAD       VARCHAR2(20) NOT NULL,
    PRESUPUESTO        NUMBER(6) NOT NULL,
    DUE�O_COD_DUE�O   NUMBER(3) NOT NULL,
    PUNTUACION         NUMBER(3) NOT NULL,
    CONSTRAINT EQUIPO_PK PRIMARY KEY ( COD_EQUIPO ),
    CONSTRAINT EQUIPO_DUE�O_FK FOREIGN KEY ( DUE�O_COD_DUE�O )
        REFERENCES DUE�O ( COD_DUE�O )
);

CREATE TABLE LIGA (
    COD_LIGA       NUMBER(3),
    NOMBRE         VARCHAR2(20) NOT NULL,
    FECHA_INICIO   DATE NOT NULL,
    FECHA_FIN      DATE ,
    ESTADO         NUMBER(1) NOT NULL,
    CONSTRAINT LIGA_PK PRIMARY KEY ( COD_LIGA )
);

CREATE TABLE JORNADA (
    COD_JORNADA     NUMBER(3) GENERATED ALWAYS AS IDENTITY START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 10 CYCLE cache 5,
    FECHA_INICIO    DATE NOT NULL,
    FECHA_FIN       DATE ,
    LIGA_COD_LIGA   NUMBER(3) NOT NULL,
    CONSTRAINT JORNADA_PK PRIMARY KEY ( COD_JORNADA ),
    CONSTRAINT JORNADA_LIGA_FK FOREIGN KEY ( LIGA_COD_LIGA )
        REFERENCES LIGA ( COD_LIGA )
);

CREATE TABLE JUGADOR (
    COD_JUGADOR         NUMBER(3) GENERATED ALWAYS AS IDENTITY,
    NOMBRE              VARCHAR2(20) NOT NULL,
    APELLIDO            VARCHAR2(20) NOT NULL,
    NICKNAME            VARCHAR2(20) NOT NULL,
    SUELDO              NUMBER(6) NOT NULL,
    NACIONALIDAD        VARCHAR2(20) NOT NULL,
    ESTADO              VARCHAR2(20) NOT NULL,
    TELEFONO            VARCHAR2(9) NOT NULL,
    EQUIPO_COD_EQUIPO   NUMBER(3) ,
    CONSTRAINT JUGADOR_PK PRIMARY KEY ( COD_JUGADOR ),
    CONSTRAINT JUGADOR_EQUIPO_FK FOREIGN KEY ( EQUIPO_COD_EQUIPO )
        REFERENCES EQUIPO ( COD_EQUIPO )
);

CREATE TABLE PARTIDO (
    EQUIPO_COD_EQUIPO     NUMBER(3) ,
    JORNADA_COD_JORNADA   NUMBER(3) ,
    RESULTADO             NUMBER(3) NOT NULL,
    FECHA_PARTIDO         DATE NOT NULL,
    EQUIPO_VISITANTE      NUMBER(3) NOT NULL,
    CONSTRAINT PARTIDO_PK PRIMARY KEY ( EQUIPO_COD_EQUIPO,JORNADA_COD_JORNADA ),
    CONSTRAINT PARTIDO_EQUIPO_FK FOREIGN KEY ( EQUIPO_COD_EQUIPO )
        REFERENCES EQUIPO ( COD_EQUIPO ),
    CONSTRAINT PARTIDO_JORNADA_FK FOREIGN KEY ( JORNADA_COD_JORNADA )
        REFERENCES JORNADA ( COD_JORNADA )
);
/*
CREATE OR REPLACE PACKAGE PAQ_MUTANTE AS --ESTE TRIGGER EXISTE SOLO PARA LA CREACION DE LAS VARIABLE QUE CONTIENE
  CODIGOEQUIPO JUGADOR.EQUIPO_COD_EQUIPO%TYPE :=NULL; --LAS CUALES EXISTEN SOLO PARA PREVENIR EL ERROR DE TABLA MUTANTE EN LOS TRIGGERS CODIFICADOS MAS ADELANTE
  SUELDOJUGADOR JUGADOR.SUELDO%TYPE :=NULL;
  SALMAX EQUIPO.PRESUPUESTO%TYPE :=NULL;
END PAQ_MUTANTE;

/

CREATE OR REPLACE TRIGGER TRIG_TRIGGERSMUTANTE --ESTE TRIGGER EXISTE SOLO PARA RESOLVER EL PROBLEMA DE TABLA MUTANTE EN LOS SIGUIENTES TRES TRIGGERS
AFTER INSERT OR UPDATE ON JUGADOR --SE EJECUTA ANTES QUE LOS DOS SIGUIENTES TRIGGERS
FOR EACH ROW
BEGIN
  PAQ_MUTANTE.CODIGOEQUIPO := :NEW.EQUIPO_COD_EQUIPO;  --Y TODO LO QUE HACE ES INTRODUCIR LOS NUEVOS VALORES A LA VARIABLE QUE DECLARAMOS ANTES
  PAQ_MUTANTE.SUELDOJUGADOR := :NEW.SUELDO;
END TRIG_TRIGGERSMUTANTE;

/

CREATE OR REPLACE TRIGGER TRIG_TRIGGERSMUTANTE_EQUIPO--TRIGGER PARA LA TABLA MUTANTE EN EQUIPO
AFTER INSERT OR UPDATE ON EQUIPO
FOR EACH ROW
BEGIN
  PAQ_MUTANTE.SALMAX:=:NEW.PRESUPUESTO;--GUARDAR EL PRESUPUESTO DE ENTRADA EN LA VARIABLE MUTANTE
END TRIG_TRIGGERSMUTANTE_EQUIPO;

/

CREATE OR REPLACE TRIGGER TRIG_MAXJUGADORES --ESTE TRIGGER VA A LIMITAR LA CANTIDAD DE JUGADORES POR EQUIPO
AFTER INSERT OR UPDATE ON JUGADOR
DECLARE
    MIEMBROS NUMBER;
BEGIN
    SELECT COUNT(EQUIPO_COD_EQUIPO) INTO MIEMBROS --UNA SELECT PARA CALCULAR LA CANTIDAD DE MIEMBROS ACTUALES EN EL EQUIPO
    FROM JUGADOR
    WHERE EQUIPO_COD_EQUIPO = PAQ_MUTANTE.CODIGOEQUIPO;   
    IF MIEMBROS > 6 --SI ES MAYOR A 6:
        THEN RAISE_APPLICATION_ERROR(-20001,'Un equipo no puede tener mas de 6 jugadores.'); --SALTA LA EXCEPCION
    END IF;  
END TRIG_MAXJUGADORES;

/

CREATE OR REPLACE TRIGGER TRIG_SAL_MIN_JUGADOR --TRIGGER PARA QUE EL SUELDO SEA MAYOR QUE EL SMI
after INSERT OR UPDATE ON JUGADOR 
FOR EACH ROW
BEGIN
    IF PAQ_MUTANTE.SUELDOJUGADOR < 736 THEN --Si el sueldo es menor que el SMI       
         RAISE_APPLICATION_ERROR(-20003,'No puede tener un sueldo menor que el Sueldo minimo profesional'); --Ejecutar el raise application error
    END IF; 
END TRIG_SAL_MIN_JUGADOR;

/

CREATE OR REPLACE TRIGGER TRIG_SAL_MAX_EQUIPO --CREAR TRIGGER PARA EL SALARIO MAXIMO EQUIPO
AFTER INSERT OR UPDATE ON EQUIPO FOR EACH ROW
DECLARE
    SALARIO_MAX NUMBER(6):=200000;
BEGIN    
    IF PAQ_MUTANTE.SALMAX>SALARIO_MAX THEN --SI EL PRESUPUESTO ES MAYOR QUE EL SALARIO MAXIMO
        RAISE_APPLICATION_ERROR(-20002,'PRESUPUESTO EQUIPO MAYOR QUE 200.000.');--EJECUTAR ERROR
    END IF;  
END TRIG_SAL_MAX_EQUIPO;

/

CREATE OR REPLACE TRIGGER TRIG_NO_JUGADORES --TRIGGER QUE COMPRUEBA QUE NO HAYA EQUIPOS SIN JUGADORES ANTES DE CREAR LA LIGA
BEFORE INSERT OR UPDATE ON LIGA 
FOR EACH ROW
DECLARE
CURSOR CUR_NUM_JUG_EQUIPO IS --CREAR CURSOR PARA BUSCAR NUMERO DE JUGADORES EN UN EQUIPO
  SELECT NVL(COUNT(COD_JUGADOR), 0) "NUM_JUGADORES"
  FROM JUGADOR
  GROUP BY EQUIPO_COD_EQUIPO;
  VREG2 CUR_NUM_JUG_EQUIPO%ROWTYPE; --GUARDAR CURSOR EN VARIABLE
BEGIN
  FOR VREG2 IN CUR_NUM_JUG_EQUIPO --MIRAR NUMERO DE JUGADORES EN TODOS LOS EQUIPOS 
    LOOP
      IF VREG2.NUM_JUGADORES = 0 THEN --COMPROBAR NUMERO DE JUGADORES
      RAISE_APPLICATION_ERROR (-20006,'No hay jugadores en el equipo'); -- ACTIVA EL ERROR
      ELSIF VREG2.NUM_JUGADORES>=2 THEN 
      UPDATE LIGA SET ESTADO = 1; --SI ESTA TODO EN ORDEN LA LIGA EMPIEZA
      END IF;
    END LOOP;
END TRIG_NO_JUGADORES;

/

CREATE OR REPLACE TRIGGER TRIG_NO_MODIF_EQUIPO--NO PERMITIR MODIFICACION NI INSERCION A EQUIPOS SI LA LIGA ESTA CREADA
BEFORE INSERT OR UPDATE ON EQUIPO --ANTES DE INSERTAR EN EQUIPO
FOR EACH ROW
DECLARE
V_ESTADO LIGA.ESTADO%TYPE;
BEGIN 
    SELECT ESTADO INTO V_ESTADO FROM LIGA;
    IF V_ESTADO = 1 THEN --SI EL ESTADO DE LA LIGA ESTA CERRADO
        RAISE_APPLICATION_ERROR(-20001,'NO SE PUEDE MODFICAR LA ESTRUCTURA DE EQUIPOS'); --SE LANZARA UN RAISE APPLICATION ERROR QUE NO DEJARA HACERLA
    END IF;
END TRIG_NO_MODIF_EQUIPO;

/

CREATE OR REPLACE TRIGGER TRIG_NO_MODIF_JUG--NO PERMITIR MODIFICACION NI INSERCION A JUGADORES SI LA LIGA ESTA CREADA
BEFORE INSERT OR UPDATE OR DELETE ON JUGADOR --ANTES DE INSERTAR EN EQUIPOS 
FOR EACH ROW
DECLARE
V_ESTADO LIGA.ESTADO%TYPE;
BEGIN 
    SELECT ESTADO INTO V_ESTADO FROM LIGA;
    IF V_ESTADO = 1 THEN --SI EL ESTADO DE LA LIGA ESTA CERRADO
        RAISE_APPLICATION_ERROR(-20004,'NO SE PUEDE MODFICAR LA ESTRUCTURA DE JUGADORES'); --SE LANZARA UN RAISE APPLICATION ERROR QUE NO DEJARA HACERLA
    END IF;
END TRIG_NO_MODIF_JUG;

/

CREATE OR REPLACE TRIGGER TRIG_SUELDOTOTALEQUIPO--QUE NO SE PUEDA INSERTAR UN JUGADOR A UN EQUIPO PASANDO DEL PRESUPUESTO MAXIMO
  AFTER INSERT OR UPDATE OR DELETE ON JUGADOR
    DECLARE
      EQUIPO_SALARIO NUMBER;
      EQUIPO_PRESUPUESTO EQUIPO.PRESUPUESTO%TYPE;
    BEGIN    
      SELECT NVL(SUM(SUELDO),0) INTO EQUIPO_SALARIO FROM JUGADOR WHERE EQUIPO_COD_EQUIPO=PAQUETE_MUTANTE.CODIGOEQUIPO;  --AQUI CALCULAMOS LA SUMA DEL SALARIO DE LOS YA EXISTENTES MIEMBROS DEL EQUIPO
      SELECT PRESUPUESTO INTO EQUIPO_PRESUPUESTO FROM EQUIPO WHERE COD_EQUIPO=PAQUETE_MUTANTE.CODIGOEQUIPO;
      EQUIPO_SALARIO:=EQUIPO_SALARIO+PAQUETE_MUTANTE.SUELDOJUGADOR;--Y AQUI LE SUMAMOS A ESO EL SALARIO DEL NUEVO MIEMBRO
      IF EQUIPO_SALARIO > EQUIPO_PRESUPUESTO --SI LA SUMA DE LOS TOTALES ES MAYOR A PRESUPUESTO DEL EQUIPO
        THEN RAISE_APPLICATION_ERROR(-20007,'UN EQUIPO NO PUEDE TENER MAS DE 200.000� DE PRESUPUESTO');  --SALTA LA EXCEPCION        
      END IF;     
END TRIG_SUELDOTOTALEQUIPO;

/

CREATE OR REPLACE TRIGGER TRIG_MAXEQUIPOS--ESTE TRIGGER LIMITARA LA CANTIDAD DE EQUIPOS PARA PREVENIR FUTUROS PROBLEMAS
BEFORE INSERT OR UPDATE OR DELETE ON EQUIPO
FOR EACH ROW
DECLARE
  CONT NUMBER; --VARIABLE EN LA QUE VAMOS A CONTAR LOS EQUIPOS CREADOS
  BEGIN
    SELECT COUNT(COD_EQUIPO) --SELET PARA CONTAR LOS EQUIPOS CREADOS
      INTO CONT FROM EQUIPO; -- LO GUARDAMOS EN LA VARIABLE
      IF CONT >= 6 --SI ES MAYOR QUE 6
        THEN RAISE_APPLICATION_ERROR(-20005,'NO PUEDE HABER MAS DE 6 EQUIPOS');           
      END IF;
END TRIG_MAXEQUIPOS;*/