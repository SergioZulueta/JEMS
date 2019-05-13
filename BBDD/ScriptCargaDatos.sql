SELECT * FROM JUGADOR;

-- CUENTA (CODIGO, NOMBRE, APELLIDO, USUARIO, CONTRASE�A)
INSERT INTO CUENTAS VALUES (01, 'USER', 'USER', 'USER', 'USER');
INSERT INTO CUENTAS VALUES (02, 'ADMIN', 'ADMIN', 'ADMIN', 'ADMIN', 'ADMIN');
INSERT INTO CUENTAS VALUES (03, 'MICHAEL' , 'WILHOIT', 'MICH', '123');
INSERT INTO CUENTAS VALUES (04, 'GEORGE', 'GRIFFIN', 'GEOR', '000');
INSERT INTO CUENTAS VALUES (05, 'DEBBIE', 'HAWKINS', 'DEBB', '12A');
INSERT INTO CUENTAS VALUES (06, 'LARRY', 'BONDS', 'LARR', 'ASD');
INSERT INTO CUENTAS VALUES (07, 'DARYL', 'CHARLES', 'DARY', 'QWE');
INSERT INTO CUENTAS VALUES (08, 'JOHN', 'FLAGG', 'JHON', '999');
INSERT INTO CUENTAS VALUES (09, 'WILLIAM', 'COOPER', 'WILL', 'ZXY');
INSERT INTO CUENTAS VALUES (10, 'JORDAN', 'HARRIS', 'JORD', '12B');


--DUE�O (CODIGO, TELEFONO)
INSERT INTO DUE�O VALUES (03, 673910207);
INSERT INTO DUE�O VALUES (04, 781201201);
INSERT INTO DUE�O VALUES (05, 682912022);
INSERT INTO DUE�O VALUES (06, 832723923);
INSERT INTO DUE�O VALUES (07, 743934034);
INSERT INTO DUE�O VALUES (08, 672392393);
INSERT INTO DUE�O VALUES (09, 812912012);
INSERT INTO DUE�O VALUES (10, 721912021);


-- EQUIPOS (CODIGO, NOMBRE, NACIONALIDAD, PRESUPUESTO, COD_DUE�O, PUNTUACION)
INSERT INTO EQUIPO VALUES(01, 'FNATIC', 'REINO UNIDO', 180000, 01, 0);
INSERT INTO EQUIPO VALUES(02, 'G2 ESPORTS', 'ESPA�A', 190000, 01, 0);
INSERT INTO EQUIPO VALUES(03, 'ORIGEN', 'ESPA�A', 140000, 01, 0);
INSERT INTO EQUIPO VALUES(04, 'SK GAMING', 'ALEMANIA', 155000, 01,  0);
INSERT INTO EQUIPO VALUES(05, 'SPLYCE', 'ESTADOS UNIDOS', 150000, 01, 0);
INSERT INTO EQUIPO VALUES(06, 'TEAM VITALITY', 'FRANCIA', 140000, 01, 0);
INSERT INTO EQUIPO VALUES(07, 'SK TELECOM T1', 'COREA', 200000, 01, 0);
INSERT INTO EQUIPO VALUES(08, 'ROYAL NEVER GIVE UP', 'CHINA', 200000, 01, 0);


-- JUGADORES (CODIGO, NOMBRE, APELLIDO, NICK, SUELDO, NACIONALIDAD, ESTADO, TELEFONO, EQUIPO)

--FNATIC
INSERT INTO JUGADOR VALUES (01, 'GABRI�L', 'RAU', 'BWIPO', 40000, 'BELGICA', 'CONTRATADO', 684939291, 01);
INSERT INTO JUGADOR VALUES (02, 'MADS', 'BROCK-PEDERSEN', 'BROXAH', 28900, 'DINAMARCA', 'CONTRATADO', 683010193, 01);
INSERT INTO JUGADOR VALUES (03, 'TIM', 'LIPOVSEK', 'NEMESIS', 32000, 'ESLOVENIA', 'CONTRATADO', 683910291, 01);
INSERT INTO JUGADOR VALUES (04, 'MARTIN', 'LARSON', 'REKKLES', 80000, 'SUECIA', 'CONTRATADO', 743818282, 01);
INSERT INTO JUGADOR VALUES (05, 'ZDRAVETS', 'LLIEV', 'HYLISSANG', 25000, 'BULGARIA', 'CONTRATADO', 748182930, 01);

--SKT T1
INSERT INTO JUGADOR VALUES (06, 'KIM', 'DONG-HA', 'KHAN', 45000, 'COREA', 'CONTRATADO', 638420422, 07);
INSERT INTO JUGADOR VALUES (07, 'KIM', 'TAE-MIN', 'CLID', 35400, 'COREA', 'CONTRATADO', 683839201, 07);
INSERT INTO JUGADOR VALUES (08, 'LEE', 'SANG-HYEOK', 'FAKER', 120000, 'COREA', 'CONTRATADO', 748192930, 07);
INSERT INTO JUGADOR VALUES (09, 'PARK', 'JIN-SEONG', 'TEDDY', 49000, 'COREA', 'CONTRATADO', 683228394, 07);
INSERT INTO JUGADOR VALUES (10, 'CHO', 'SE-HYEONG', 'MATA', 78000, 'COREA', 'CONTRATADO', 674920192, 07);

--G2
INSERT INTO JUGADOR VALUES (12, 'MARTIN', 'HANSEN', 'WUNDER', 30400, 'DINAMARCA', 'CONTRATADO', 682039192, 02);
INSERT INTO JUGADOR VALUES (13, 'MARCIN', 'JANKOWSKI', 'JANKOS', 39000, 'POLONIA', 'CONTRATADO', 683919203, 02);
INSERT INTO JUGADOR VALUES (14, 'RASMUS', 'WINTHER', 'CAPS', 69000, 'DINAMARCA', 'CONTRATADO', 683920192, 02);
INSERT INTO JUGADOR VALUES (15, 'LUKA', 'PERKOVI?', 'PERKZ', 56000, 'CROACIA', 'CONTRATADO', 683920174, 02);
INSERT INTO JUGADOR VALUES (16, 'MIHAEL', 'MEHLE', 'MIKYX', 17000, 'ESLOVENIA', 'CONTRATADO', 628301022, 02);

--ORIGEN
INSERT INTO JUGADOR VALUES (17, 'BARNEY', 'MORRIS', 'ALPHARI', 40200, 'REINO UNIDO', 'CONTRATADO', 683919203, 03);
INSERT INTO JUGADOR VALUES (18, 'JONAS', 'ANDERSEN', 'KOLD', 30102, 'DINAMARCA', 'CONTRATADO', 683920394, 03);
INSERT INTO JUGADOR VALUES (19, 'ERLEND', 'V�TEVIK', 'NUKEDUCK', 29000, 'NORUEGA', 'CONTRATADO', 928392930, 03);
INSERT INTO JUGADOR VALUES (20, 'PATRIK', 'J�R?', 'PATRIK', 19000, 'REPUBLICA CHECA', 'CONTRATADO', 937481828, 03);
INSERT INTO JUGADOR VALUES (21, 'ALFONSO', 'AGUIRRE', 'MITHY', 50200, 'ESPA�A', 'CONTRATADO', 928371828, 03);

--SK GAMING
INSERT INTO JUGADOR VALUES (22, 'JORGE', 'CASANOVAS', 'WERLYB', 17000, 'ESPA�A', 'CONTRATADO', 928374618, 04);
INSERT INTO JUGADOR VALUES (23, 'OSKAR', 'BODEREK', 'SELFMADE', 23000, 'POLONIA', 'CONTRATADO', 849381729, 04);
INSERT INTO JUGADOR VALUES (24, 'CHOI', 'JUN-SIK', 'PIREAN', 28000, 'COREA', 'CONTRATADO', 673912123, 04);
INSERT INTO JUGADOR VALUES (25, 'JU�', 'MARU�I?', 'CROWNSHOT', 24000, 'ESLOVENIA', 'CONTRATADO', 839283912, 04);
INSERT INTO JUGADOR VALUES (26, 'HAN', 'MIN-KOOK', 'DREAMS', 21020, 'COREA', 'CONTRATADO', 728394819, 04);

--SPLYCE
INSERT INTO JUGADOR VALUES (27, 'ANDREI', 'POPA', 'OROME', 18000, 'RUMANIA', 'CONTRATADO', 918281231, 05);
INSERT INTO JUGADOR VALUES (28, 'TAM�S', 'KISS', 'VIZICSACSI', 43000, 'HUNGRIA', 'CONTRATADO', 812831231, 05);
INSERT INTO JUGADOR VALUES (29, 'ANDREI', 'DRAGOMIR', 'XERXE', 24000, 'RUMANIA', 'CONTRATADO', 912831012, 05);
INSERT INTO JUGADOR VALUES (30, 'MAREK', 'BR�ZDA', 'HUMANOID', 15020, 'REPUBLICA CHECA', 'CONTRATADO', 712801281, 05);
INSERT INTO JUGADOR VALUES (31, 'KASPER', 'KOBBERUP', 'KOBBE', 19030, 'DINAMARCA', 'CONTRATADO', 912812012, 05);

--TEAM VITALITY
INSERT INTO JUGADOR VALUES (32, 'LUCAS', 'SIMON-MESLET', 'CABOCHARD', 39020, 'FRANCIA', 'CONTRATADO', 681291201, 06);
INSERT INTO JUGADOR VALUES (33, 'LEE', 'JAE-HA', 'MOWGLI', 37000, 'COREA', 'CONTRATADO', 712912012, 06);
INSERT INTO JUGADOR VALUES (34, 'DANIELE', 'DI MAURO', 'JIZUKE', 32010, 'ITALIA', 'CONTRATADO', 723932011, 06);
INSERT INTO JUGADOR VALUES (35, 'AMADEU', 'CARVALHO', 'ATTILA', 27300, 'PORTUGAL', 'CONTRATADO', 612812012, 06);
INSERT INTO JUGADOR VALUES (36, 'JAKUB', 'SKURZY?SKI', 'JACTROLL', 17000, 'POLONIA', 'CONTRATADO', 782910291, 06);

--ROYAL NEVER GIVE UP
INSERT INTO JUGADOR VALUES (37, 'SHEK', 'WAI HO', 'AMAZINGJ', 49000, 'CHINA', 'CONTRATADO', 82930291, 08);
INSERT INTO JUGADOR VALUES (38, 'HUNG', 'HAO-HSUAN', 'KARSA', 55000, 'TAIWAN', 'CONTRATADO', 829102910, 08);
INSERT INTO JUGADOR VALUES (42, 'LI', 'YUAN-HAO', 'XIAOHU', 75000, 'CHINA', 'CONTRATADO', 672819102, 08);
INSERT INTO JUGADOR VALUES (39, 'JIAN', 'ZI-HAO', 'UZI', 96000, 'CHINA', 'CONTRATADO', 682930291, 08);
INSERT INTO JUGADOR VALUES (40, 'SHI', 'SEN-MING', 'MING', 63000, 'CHINA', 'CONTRATADO', 612812012, 08);
INSERT INTO JUGADOR VALUES (41, 'WANG', 'KANG-CAN', 'S1XU', 18000, 'CHINA', 'CONTRATADO', 812712812, 08);

-- SIN CONTRATO
INSERT INTO JUGADOR VALUES (11, 'LEE', 'SANG-HO', 'EFFORT', 14000, 'COREA', 'VACANTE', 783910293, NULL);
INSERT INTO JUGADOR VALUES (43, 'KIM', 'DO-YEONG', 'DORAON', 18000, 'COREA', 'VACANTE', 671212882, NULL);
INSERT INTO JUGADOR VALUES (44, 'DAVID', 'ROBERSON', 'COP', 21000, 'ESTADOS UNIDOS', 'VACANTE', 672829102, NULL);
INSERT INTO JUGADOR VALUES (45, 'MATY��', 'ORS�G', 'CARZZY', 13000, 'REPUBLICA CHECA', 'VACANTE', 928291281, NULL);
INSERT INTO JUGADOR VALUES (46, 'DEIVYDAS', 'PLIKAITIS', 'AGENTAS', 12011, 'LITUANIA', 'VACANTE', 712812912, NULL);
INSERT INTO JUGADOR VALUES (47, 'FELIX', 'BOSTR�M', 'MAGIFELIX', 30400, 'SUECIA', 'VACANTE', 912012912, NULL);
INSERT INTO JUGADOR VALUES (48, 'TONI', 'SABALI?', 'SACRE', 12000, 'CROACIA', 'VACANTE', 612947538, NULL);
INSERT INTO JUGADOR VALUES (49, 'PH?M', 'MINH', 'ZEROS', 24000, 'VIETNAM', 'VACANTE', 712912012, NULL);
INSERT INTO JUGADOR VALUES (50, 'HO�NG', 'TI?N', 'MELIODAS', 23020, 'VIETNAM', 'VACANTE', 829310122, NULL);
INSERT INTO JUGADOR VALUES (51, 'ILYA', 'MAKAVCHUK', 'GADGET', 21020, 'BIELORRUSIA', 'VACANTE', 693012912, NULL);


-- LIGA (CODIGO, NOMBRE, FECHA_INICIO, FECHA_FIN, ESTADO)
-- INSERT INTO LIGA VALUES (01, 'LIGA E-GIBIDE', NULL, NULL, NULL);