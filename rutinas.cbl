		IDENTIFICATION DIVISION.
		PROGRAM-ID. RUTINAS.

		PROCEDURE DIVISION.
		MAIN-PROCEDURE.
			DISPLAY "Soy la rutina main.".
			PERFORM RUTINA01.
			DISPLAY "Fin.".
			STOP RUN.
		RUTINA01.
			DISPLAY "Soy la rutina 1.".
			PERFORM RUTINA02.
		RUTINA02.
			DISPLAY "Soy la rutina 2.".
			PERFORM RUTINA03.
		RUTINA03.
			DISPLAY "Soy la rutina 3.".
		END PROGRAM RUTINAS.
