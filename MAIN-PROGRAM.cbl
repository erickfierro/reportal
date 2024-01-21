      *================================================================*
      *                                                                *
      *          I D E N T I F I C A T I O N   D I V I S I O N         *
      *                                                                *
      *================================================================*
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN-PROGRAM.
       AUTHOR. ERICK STIVEN FIERRO PERDOMO.
       DATE-WRITTEN. 18-01-2024.

      *================================================================*
      *    TITULO           : PROGRAMA PRINCIPAL                       *
      *    FINCIONALIDAD    : VALIDAR Y LLAMAR LOS DISTINTOS PROGRAMAS *
      *                       SEGUN SU FUNCIONALIDAD                   *
      *    TIPO             : COBOL-CBL                                *
      *----------------------------------------------------------------*
      * CONTROL DE CAMBIOS                                             *
      *----------------------------------------------------------------*
      * FECHA       : 18-01-2024                                       *
      * DESCRIPCION : CREACION DEL PROGRAMA                            *
      * ACTIVIDAD ASOCIADA :                                           *
      *----------------------------------------------------------------*
      * FECHA       : 20-01-2024                                       *
      * DESCRIPCION : CREACION DEL MENU PRINCIPAL                      *
      * ACTIVIDAD ASOCIADA : MENU PRINCIPAL                            *
      *----------------------------------------------------------------*

      *================================================================*
      *                                                                *
      *             E N V I R O N M E N T   D I V I S I O N            *
      *                                                                *
      *================================================================*
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

      *================================================================*
      *             E N V I R O N M E N T   D I V I S I O N            *
      *================================================================*
       DATA DIVISION.
       FILE SECTION.

      *================================================================*
      *         W O R K I N G   S T O R A G E   S E C T I O N          *
      *================================================================*
       WORKING-STORAGE SECTION.

      *----------------------------------------------------------------*
      *                       AREA DE CONSTANTES                       *
      *----------------------------------------------------------------*
      
      *----------------------------------------------------------------*
      *                   AREA DE VARIABLES AUXILIARES                 *
      *----------------------------------------------------------------*
       01 WCH-AUXILIARES.
           05 WZD-AUX-OPCION              PIC 9(01).
      
      *----------------------------------------------------------------*
      *                        AREA DE CONTADORES                      *
      *----------------------------------------------------------------*

      *----------------------------------------------------------------*
      *                         AREA DE SWITCHES                       *
      *----------------------------------------------------------------*
      
      *----------------------------------------------------------------*
      *                          AREA DE COPYS                         *
      *----------------------------------------------------------------*

      *================================================================*
      *                                                                *
      *               P R O C E D U R E   D I V I S I O N              *
      *                                                                *
      *================================================================*
       PROCEDURE DIVISION.

           PERFORM 1000-INICIO-PROGRAMA
           PERFORM 2000-PROCESO-PROGRAMA
           PERFORM 9999-FINAL-PROGRAMA
           .

      *----------------------------------------------------------------*
      * 1000-INICIO-PROGRAMA                                           * 
      *----------------------------------------------------------------*
       1000-INICIO-PROGRAMA.
           CONTINUE
           .

      *----------------------------------------------------------------*
      * 2000-PROCESO-PROGRAMA                                          * 
      *----------------------------------------------------------------*
       2000-PROCESO-PROGRAMA.
           PERFORM 2100-MENU-PRINCIPAL
           EVALUATE WZD-AUX-OPCION
               WHEN 1
               WHEN 2
                   CONTINUE
           END-EVALUATE
           .

      *----------------------------------------------------------------*
      * 2100-MENU-PRINCIPAL                                            * 
      *    MOSTRAR LAS DIFERENTES OPCIONES DEL PROGRAMA                *
      *----------------------------------------------------------------*
       2100-MENU-PRINCIPAL.
           DISPLAY '*-------------------------------------------------*'
           DISPLAY '*                   REPORTAL                      *'
           DISPLAY '*              Inventory software                 *'
           DISPLAY '*                                                 *'
           DISPLAY '*  1. Leer archivo externo                        *'
           DISPLAY '*  2. Generar reporte                             *'
           DISPLAY '*-------------------------------------------------*'
           DISPLAY '*  Opcion -> ' WITH NO ADVANCING
           ACCEPT WZD-AUX-OPCION
           .

      *----------------------------------------------------------------*
      * 9999-FINAL-PROGRAMA                                            * 
      *----------------------------------------------------------------*
       9999-FINAL-PROGRAMA.
           STOP RUN
           .
