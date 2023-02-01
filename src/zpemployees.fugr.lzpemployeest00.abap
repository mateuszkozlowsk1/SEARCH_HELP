*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZPTITLES........................................*
DATA:  BEGIN OF STATUS_ZPTITLES                      .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZPTITLES                      .
CONTROLS: TCTRL_ZPTITLES
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZPTITLES                      .
TABLES: ZPTITLES                       .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
