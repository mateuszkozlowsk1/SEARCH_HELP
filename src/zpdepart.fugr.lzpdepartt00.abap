*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZPDEPART........................................*
DATA:  BEGIN OF STATUS_ZPDEPART                      .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZPDEPART                      .
CONTROLS: TCTRL_ZPDEPART
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZPDEPART                      .
TABLES: ZPDEPART                       .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
