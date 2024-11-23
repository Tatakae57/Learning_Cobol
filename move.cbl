        IDENTIFICATION DIVISION.                                        
        PROGRAM-ID. move.                                   
        DATA DIVISION.                                      
        WORKING-STORAGE SECTION.                            
        	01 NUM1 PIC 9.
        	01 NUM2 PIC 9.
        	01 NUM3 PIC 9.
        	01 NUM4 PIC 9 VALUE ZERO.
        	01 NUM5 PIC 9(2) VALUE ZEROS.
        	01 PAL1 PIC XXXX VALUE SPACE.
        	01 PAL2 PIC XXXX VALUE SPACES.

        PROCEDURE DIVISION.                                 
        MAIN.
        	MOVE 1 TO NUM1 NUM2 NUM3.
        	DISPLAY NUM1.
        	DISPLAY NUM2.
        	DISPLAY NUM3.
        	DISPLAY NUM4.
        	DISPLAY NUM5.
        	DISPLAY "a"PAL1"a"
        	DISPLAY "b"PAL2"b"
        	STOP RUN.
        END PROGRAM move.
