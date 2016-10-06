CREATE TABLE PGB_HIST_INFCONSTRUCCION
(
  ID_HIST_INFCONSTRUCCION  NUMBER(10),
  ID_INFCONSTRUCCION       NUMBER,
  ID_AVALUO                NUMBER,
  N_PISOS                  NUMBER(2),
  N_SOTANOS                NUMBER(2),
  N_VETUSTEZ               NUMBER(23,4),
  R_ESTCONS                NUMBER(3),
  C_ESTCONSERVACION        NUMBER(3),
  K_ESTTERMINADO           NUMBER(3),
  K_SINTERMINAR            NUMBER(3),
  K_ESTREMODELA            NUMBER(3),
  K_ESTTERMINADA           NUMBER(3),
  K_ENOBRA                 NUMBER(3),
  T_AVANCEOBRA             NUMBER(3),
  C_ESTRUCTURA             NUMBER(3),
  T_ESTRUCTURA             VARCHAR2(30 BYTE),
  C_FACHADA                NUMBER(3),
  T_FACHADA                VARCHAR2(30 BYTE),
  C_CUBIERTA               NUMBER(3),
  T_CUBIERTA               VARCHAR2(30 BYTE),
  N_SALA                   NUMBER(2),
  N_BANIOSOCIAL            NUMBER(2),
  N_BANIOPRIVADO           NUMBER(2),
  N_BANIOSERVICIO          NUMBER(2),
  N_JARDIN                 NUMBER(2),
  N_COMEDOR                NUMBER(2),
  N_ESTARHAB               NUMBER(2),
  N_COCINA                 NUMBER(2),
  N_PATIOINT               NUMBER(2),
  N_BALCON                 NUMBER(2),
  N_ESTUDIO                NUMBER(2),
  N_HABITACIONES           NUMBER(2),
  N_CUARTOSERV             NUMBER(2),
  N_ZVERDEPRIV             NUMBER(2),
  N_TERRAZA                NUMBER(2),
  C_ILUMINACION            NUMBER(3),
  C_VENTILACION            NUMBER(3),
  N_TOTALGARAJES           NUMBER(2),
  N_CUBIERTO               NUMBER(2),
  N_USOEXCLUSIVO           NUMBER(2),
  N_SENCILLO               NUMBER(2),
  N_BAHIACOMUNAL           NUMBER(2),
  N_DEPOSITO               NUMBER(2),
  N_DESCUBIERTO            NUMBER(2),
  N_PRIVADO                NUMBER(2),
  N_DOBLE                  NUMBER(2),
  N_SERVIDUMBRE            NUMBER(2),
  N_LOCAL                  NUMBER(2),
  N_BODEGA                 NUMBER(2),
  N_OFICINA                NUMBER(2),
  C_ESTPISOS               NUMBER(3),
  C_ESTMUROS               NUMBER(3),
  C_ESTMETAL               NUMBER(3),
  C_ESTCOCINA              NUMBER(3),
  C_ESTTECHOS              NUMBER(3),
  C_ESTMADERA              NUMBER(3),
  C_ESTBANIOS              NUMBER(3),
  C_TIPOFACHADA            NUMBER(3),
  C_PISOSBODEGA            NUMBER(3),
  C_CALIDPISO              NUMBER(3),
  C_CALIDMURO              NUMBER(3),
  C_CALIDCMETAL            NUMBER(3),
  C_CALIDCOCINA            NUMBER(3),
  C_CALIDTECHO             NUMBER(3),
  C_CALIDCMADER            NUMBER(3),
  C_CALIDBANIO             NUMBER(3),
  C_PROPHORZ               NUMBER(3),
  C_CONJAGRUPCERR          NUMBER(3),
  C_UBICACIONINM           NUMBER(3),
  N_NUMEDIF                NUMBER(2),
  N_UNDPISO                NUMBER(2),
  N_TOTALUND               NUMBER(3),
  K_PORTERIA               NUMBER(3),
  K_SALONCOMN              NUMBER(3),
  K_AACOND                 NUMBER(3),
  K_CLUBHOUSE              NUMBER(3),
  K_JUEGONINOS             NUMBER(3),
  K_BICICLETERO            NUMBER(3),
  K_PRESION                NUMBER(3),
  K_ZVERDES                NUMBER(3),
  K_CITOFONO               NUMBER(3),
  K_BOMBA                  NUMBER(3),
  K_TANQUEAGUA             NUMBER(3),
  K_GJVISITA               NUMBER(3),
  K_CANCHAMULT             NUMBER(3),
  K_SHUT                   NUMBER(3),
  K_SQUASH                 NUMBER(3),
  K_GIMNASIO               NUMBER(3),
  K_GOLFITO                NUMBER(3),
  K_PISCINA                NUMBER(3),
  K_PLANTA                 NUMBER(3),
  K_ASCENSOR               NUMBER(3),
  N_NUMASCENSORES          NUMBER(2),
  T_OTROSDOTACION          VARCHAR2(30 BYTE),
  T_OTROSDOTACION2         VARCHAR2(30 BYTE),
  A_UBICFUENTESH           NUMBER(3),
  A_UBICNIVELZ             NUMBER(3),
  A_LUCES                  NUMBER(3),
  A_EDIPISO                NUMBER(4),
  A_EDISIMALT              NUMBER(3),
  A_EDISIMPLANTA           NUMBER(3),
  A_EDIMAT                 NUMBER,
  A_OTRO_MATERIAL          VARCHAR2(30 BYTE),
  A_EDIPARAPET             NUMBER(3),
  A_DCELEVTANQ             NUMBER(3),
  A_OTRA_UBIC_TANQUE       VARCHAR2(30 BYTE),
  A_SOBREPESO              NUMBER(3),
  A_GOLPETEO               NUMBER(3),
  A_ASENTAMIENTOS          NUMBER(3),
  A_DANOPREVIO             NUMBER(3),
  USUARIO_CREACION         VARCHAR2(15 BYTE),
  FECHA_CREACION           DATE,
  USUARIO_TRANSACCION      VARCHAR2(15 BYTE),
  FECHA_TRANSACCION        DATE,
  C_ALTURA                 NUMBER(3)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;









































































































































