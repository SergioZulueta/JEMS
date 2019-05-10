CREATE OR REPLACE PROCEDURE PRC_REF_EQUIPO
(P_DUE�O OUT DUE�O.CODIGO_CUENTA%TYPE,
 P_CURSOR_EQUIPO OUT SYS_REFCURSOR,
 P_NUM_JUGADORES OUT NUMBER)
  IS
 BEGIN	
  OPEN P_CURSOR_EQUIPO FOR
  SELECT NOMBRE INTO P_DUE�O FROM DUE�O WHERE 
  SELECT COD_EQUIPO,NOMBRE,
NACIONALIDAD,PRESUPUESTO,DUE�O_COD_CUENTA,PUNTUACION  
  FROM EQUIPO;
  SELECT NVL(COUNT(COD_JUGADOR),0) INTO P_NUM_JUGADORES
  FROM JUGADOR
  WHERE EQUIPO_COD_EQUIPO=PAQUETE_MUTANTE.CODIGOEQUIPO
  GROUP BY EQUIPO_COD_EQUIPO;
END PRC_REF_EQUIPO;