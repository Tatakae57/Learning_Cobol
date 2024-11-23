        IDENTIFICATION DIVISION.                                        
        PROGRAM-ID. numeros_nivel.                                   
        DATA DIVISION.                                      
        WORKING-STORAGE SECTION.                            
        	 *> 02 a 49: Subdivisiones de 01.
        	 *> Nivel 77: Variables sin subdivisiones.
        	 *> Nivel 88: Posibles valores para una variable.
        	 01 ARRAY.
        	 	02 NUM1 PIC 9 VALUE 1.
        	 	02 NUM2 PIC 9 VALUE 2.
        	 	02 NUM2 PIC 9 VALUE 3.

        	 01 EDAD PIC 999. *> Actua como un enum
        	 	88 JOVEN VALUE 1 THRU 40.
        	 	88 MADURO VALUE 41 THRU 65.
        	 	88 ANCIANO VALUE 66 THRU 100.

        PROCEDURE DIVISION.                                 
        MAIN-PROCEDURE.
        	DISPLAY "INGRESE SU EDAD: "
        	ACCEPT EDAD.
        	IF JOVEN
        		DISPLAY "Usted es joven.".
        	IF MADURO
        		DISPLAY "Usted es maduro.".
        	IF ANCIANO
        		DISPLAY "Usted es un anciano.".

        	STOP RUN.
        END PROGRAM numeros_nivel.
