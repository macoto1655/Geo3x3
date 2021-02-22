        *> GEO3X3
        IDENTIFICATION DIVISION.
        PROGRAM-ID.     GEO3X3.
        
        ENVIRONMENT     DIVISION.
        CONFIGURATION   SECTION.
        DATA            DIVISION.
            LINKAGE     SECTION.
            01  GEO3X3-DATA-1.
                03  GEO3X3-ITEM-1  PIC 9(03).
                03  GEO3X3-RESULT  PIC 9(03).

        PROCEDURE       DIVISION
                        USING   GEO3X3-DATA-1.

          MOVE 100 TO GEO3X3-ITEM-1.
          DISPLAY "IN CALLED GEO3X3-1"
          COMPUTE GEO3X3-RESULT = GEO3X3-ITEM-1.

        EXIT PROGRAM.
