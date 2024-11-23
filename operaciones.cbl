		IDENTIFICATION DIVISION.
			PROGRAM-ID. OPERACIONES.
		
		DATA DIVISION.
			WORKING-STORAGE SECTION.
				01 NUM1 PIC 9(3).
				01 NUM2 PIC 9(3).
				01 RESULT PIC 9(4).

		PROCEDURE DIVISION.
			MAIN-PROCEDURE.
				DISPLAY "Introduce un numero: ".
				ACCEPT NUM1.
				DISPLAY "Introduce el segundo numero: ".
				ACCEPT NUM2.

				ADD NUM1 TO NUM2 GIVING RESULT.
				DISPLAY "La suma es: " RESULT.
				
				SUBTRACT NUM1 FROM NUM2 GIVING RESULT.
				DISPLAY "La resta es: " RESULT.

				MULTIPLY NUM1 BY NUM2 GIVING RESULT.
				DISPLAY "La multiplicacion es: " RESULT.

				DIVIDE NUM2 BY NUM1 GIVING RESULT.
				DISPLAY "La división es: " RESULT.

				STOP RUN.

		END PROGRAM OPERACIONES.
