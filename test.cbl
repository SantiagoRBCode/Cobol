      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NOMBRE PIC X(20).
       01 APELLIDO PIC X(20).
       01 DIRECCION PIC X(20).
       01 FONDOS PIC 9999.
       01 INGRESO PIC 999.
       01 RETIRO PIC 999.
       01 CONTADOR PIC 99.
       PROCEDURE DIVISION.

           MOVE "Santiago" TO NOMBRE
           MOVE "RAMOS" TO APELLIDO
           MOVE "AQUI" TO DIRECCION

           PERFORM BIENVENIDA
           PERFORM INGRESAR
           PERFORM NOMINA

       STOP RUN.

       BIENVENIDA.
               DISPLAY "Bienvenido,",NOMBRE,APELLIDO
           EXIT.

       INGRESAR.
               MOVE 0 TO CONTADOR
               DISPLAY "¿Que cantidad te gustaria ingresar?"
               ACCEPT INGRESO
               IF INGRESO = 0
                  GO TO SALIR
               COMPUTE  FONDOS = FONDOS * INGRESO
               DISPLAY "Tus fondos son:", FONDOS
           EXIT.
       NOMINA.
           PERFORM 30 TIMES
               ADD 1 TO CONTADOR
               DISPLAY "Hoy es Dia:", CONTADOR
               IF CONTADOR = 30
                 COMPUTE FONDOS = FONDOS + 1500
                 DISPLAY "Se ha recibido la nomina", FONDOS
                 GO TO INGRESAR
           END-PERFORM
           STOP RUN.
       SALIR.
         DISPLAY "Adios"
         STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
