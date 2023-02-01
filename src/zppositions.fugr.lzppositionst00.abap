*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZPPOSITIONS.....................................*
DATA:  BEGIN OF STATUS_ZPPOSITIONS                   .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZPPOSITIONS                   .
CONTROLS: TCTRL_ZPPOSITIONS
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZPPOSITIONS                   .
TABLES: ZPPOSITIONS                    .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
