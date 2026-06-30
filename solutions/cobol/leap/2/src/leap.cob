       IDENTIFICATION DIVISION.
       PROGRAM-ID. LEAP.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-YEAR              PIC 9999.
       01 WS-RESULT            PIC 1.
       PROCEDURE DIVISION.
       LEAP.
      * Enter solution here
       EVALUATE TRUE
          WHEN FUNCTION MOD (WS-YEAR, 4) <> 0
            MOVE 0 TO WS-RESULT
          WHEN FUNCTION MOD (WS-YEAR, 100) <> 0
            MOVE 1 TO WS-RESULT
          WHEN FUNCTION MOD (WS-YEAR, 400) = 0
            MOVE 1 TO WS-RESULT
          WHEN OTHER
            MOVE 0 TO WS-RESULT
       END-EVALUATE.
       LEAP-EXIT.
         EXIT.
