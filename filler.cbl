	IDENTIFICATION DIVISION.
	PROGRAM-ID. FIL.

	DATA DIVISION.
	WORKING-STORAGE SECTION.
		01 VARIABLE-COMPUESTA.
			05 TEXTO1 PIC X(15) VALUE "Hello".
			05 FILLER PIC X VALUE " ". *> Sirve para ignorar partes que no se necesita modificar o tener en cuenta. Su valor no cambia.
			05 TEXTO2 PIC X(10) VALUE "World!".
	
	PROCEDURE DIVISION.
	MAIN.
		DISPLAY VARIABLE-COMPUESTA.
		MOVE "Bye" TO TEXTO1.
		MOVE "bye." TO TEXTO2.
		DISPLAY VARIABLE-COMPUESTA.
		STOP RUN.
	END PROGRAM FIL.
