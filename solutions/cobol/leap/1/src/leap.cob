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
       
       IF FUNCTION MOD (WS-YEAR, 400) = 0
         SET WS-RESULT TO 1
       
       ELSE      
       IF FUNCTION MOD (WS-YEAR, 100) = 0
         SET WS-RESULT TO 0
       
       ELSE
       IF FUNCTION MOD (WS-YEAR, 4) = 0
         SET WS-RESULT TO 1
       
       END-IF
       END-IF
       END-IF
         CONTINUE.
       LEAP-EXIT.
         EXIT.
