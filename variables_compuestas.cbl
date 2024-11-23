        IDENTIFICATION DIVISION.                                        
        PROGRAM-ID. variables_compuestas.                                   
        DATA DIVISION.                                      
        WORKING-STORAGE SECTION.                            
        	01 VARIABLE-COMPUESTA. *> Actúa como un array.
        		02 NUM1 PIC 9 VALUE 2.
        		02 NUM2 PIC 9 VALUE 3.
        		02 NUM3 PIC 9 VALUE 4.
        		
        PROCEDURE DIVISION.                                 
        MAIN.
        	DISPLAY NUM3.
        	DISPLAY VARIABLE-COMPUESTA.
        	STOP RUN.
        END PROGRAM variables_compuestas.
