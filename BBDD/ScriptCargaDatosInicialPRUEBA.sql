INSERT INTO CUENTAS VALUES (01, 'USER', 'USER', 'USER', 'USER');

INSERT INTO DUE�O VALUES (01, 673910207);

INSERT INTO EQUIPO VALUES(01, 'FNATIC', 'REINO UNIDO', 180000,01, 0);
UPDATE EQUIPO SET PRESUPUESTO=150000 WHERE cod_equipo=01;

select * from cuentas;
select * from due�o;
select * from equipo;
delete from CUENTAS;
delete from DUE�O;
DELETE FROM EQUIPO;
INSERT INTO JUGADOR VALUES (01, 'GABRI�L', 'RAU', 'BWIPO', 40000, 'BELGICA', 'CONTRATADO', 684939291, 01);
INSERT INTO JUGADOR VALUES (02, 'MADS', 'BROCK-PEDERSEN', 'BROXAH', 28900, 'DINAMARCA', 'CONTRATADO', 683010193, 01);
INSERT INTO JUGADOR VALUES (03, 'TIM', 'LIPOVSEK', 'NEMESIS', 32000, 'ESLOVENIA', 'CONTRATADO', 683910291, 01);
INSERT INTO JUGADOR VALUES (04, 'MARTIN', 'LARSON', 'REKKLES', 80000, 'SUECIA', 'CONTRATADO', 743818282, 01);
INSERT INTO JUGADOR VALUES (05, 'ZDRAVETS', 'LLIEV', 'HYLISSANG', 25000, 'BULGARIA', 'CONTRATADO', 748182930, 01);

INSERT INTO JUGADOR VALUES (06, 'KIM', 'DONG-HA', 'KHAN', 45000, 'COREA', 'CONTRATADO', 638420422, 01);
INSERT INTO JUGADOR VALUES (07, 'KIM', 'TAE-MIN', 'CLID', 35400, 'COREA', 'CONTRATADO', 683839201, 01);
select * from JUGADOR;
delete from JUGADOR;
SELECT COUNT(*)FROM JUGADOR WHERE equipo_cod_equipo=01;
ROLLBACK;
