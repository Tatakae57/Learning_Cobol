      * Identificación de programa
		IDENTIFICATION DIVISION.
		PROGRAM-ID. DIVISIONES.
		AUTHOR. Kae57
		DATE-WRITTEN. 22/11/24
		DATE-COMPILED. 22/11/24
		REMARKS. Programa para ver las divisiones de cobol.

	  * Entorno (no obligatoria)
		ENVIRONMENT DIVISION.
			CONFIGURATION SECTION.
				SOURCE-COMPUTER. Computadora donde se escribió.
				OBJECT-COMPUTER. Computadora donde se va a ejecutar.
				SPECIAL-NAMES.

			INPUT-OUTPUT SECTION.
				FILE-CONTROL.
				SELECT [OPTIONAL] archivo.
				ASSIGN TO tipo-de-dispositivo. 
				ORGANIZATION IS organizacion.
				ACCESS MODE IS modo-de-acceso.
				RECORD KEY IS clave-del-registro.
				ALTERNATE KEY IS clave-alternativa.
				WITH DUPLICATES.
				STATUS IS. variable-de-estado-del-archivo

      * Registros y variables
		DATA DIVISION.
			FILE SECTION. campos-de-registros-de-archivos
			WORKING-STORAGE SECTION. variables
				01 VAR1 PIC A(12).
				01 EDAD PIC 9(2) VALUE 20.
			LINKAGE SECTION. variables-programa-principal
			COMMUNICATION SECTION. comunicacion-otros-programas
			SCREEN SECTION. campos-utilizar-pantalla.
      
      * Lógica de programación
		PROCEDURE DIVISION.
			DISPLAY "Hello World!".
			MOVE "Variable" TO VAR1.
			DISPLAY VAR1.
			DISPLAY "Tu edad: " EDAD.
			STOP RUN.

      * Finalizar programa
		END PROGRAM DIVISIONES.