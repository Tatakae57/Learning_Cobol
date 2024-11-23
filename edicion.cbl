        IDENTIFICATION DIVISION.                                        
        PROGRAM-ID. edicion.                                   
        DATA DIVISION.                                      
        WORKING-STORAGE SECTION.                            
        	01 NUM1 PIC 99.99 VALUE 10.05. *> No se puede calcular, solo mostrar.
        	01 NUM2 PIC Z999 VALUE 0. *> Que en un display no se vea el primer cero vacío.
        	01 NUM3 PIC ZZZZ VALUE 0. *> Que en el display no se vea ningún cero vacío.

        PROCEDURE DIVISION.                                 
        MAIN.
        	DISPLAY NUM1.
        	MOVE 93 TO NUM2.
        	DISPLAY NUM2.
        	MOVE 50 TO NUM3.
        	DISPLAY NUM3.
        	STOP RUN.
        END PROGRAM edicion.
