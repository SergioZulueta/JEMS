CREATE OR REPLACE TRIGGER TRIG_SAL_MIN_JUGADOR --TRIGGER PARA QUE EL SUELDO SEA MAYOR QUE EL SMI
BEFORE INSERT OR UPDATE 
ON JUGADOR 
FOR EACH ROW
BEGIN
    IF PAQ_MUTANTE.SUELDOJUGADOR < 736 THEN --Si el sueldo es menor que el SMI       
         RAISE_APPLICATION_ERROR(-20003,'No puede tener un sueldo menor que el Sueldo minimo profesional'); --Ejecutar el raise application error
    END IF; 
END TRIG_SAL_MIN_JUGADOR;

ALTER TRIGGER TRIG_SAL_MIN_JUGADOR ENABLE;
DROP TRIGGER TRIG_SAL_MIN_JUGADOR ;

INSERT INTO JUGADOR VALUES (05, 'ZDRAVETS', 'LLIEV', 'HYLISSANG', 600, 'BULGARIA', 'CONTRATADO', 748182930, 01);