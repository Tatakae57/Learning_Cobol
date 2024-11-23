        IDENTIFICATION DIVISION.                                        
        PROGRAM-ID. n_p_d.                                   
        DATA DIVISION.                                      
        WORKING-STORAGE SECTION.
        	*> S = Signed.                            
        	01 DEC PIC 9(4). *> Variable para guardar decimal
        	01 POSIT PIC S9(4) VALUE 1000. *> Positivo
        	01 NEG PIC S9(4) VALUE -2000.*> Negativo

        PROCEDURE DIVISION.
        MAIN.
        	MOVE 10.5 TO DEC.
        	DISPLAY DEC.
        	DISPLAY POSIT.
        	DISPLAY NEG.
			STOP RUN.
        END PROGRAM n_p_d.
