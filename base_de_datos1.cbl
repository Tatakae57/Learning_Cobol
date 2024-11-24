	*> Base de datos:
	*> Colección de datos en un archivo.
	*> Contiene: Campos    (NOMBRE, APELLIDO, EDAD, TELÉFONO)
	*>			 Registros (Kae,    Glomi,	  20,   264)
	IDENTIFICATION DIVISION.
	PROGRAM-ID. BASE1.

	ENVIRONMENT DIVISION. *> Se describe el archivo físico.
	INPUT-OUTPUT SECTION.
		FILE-CONTROL.
		SELECT OPTIONAL ARCHIVO-EMPLEADOS *> Seleccionar la variable ARCHIVO-EMPLEADOS.
		ASSIGN TO "empleados.dat" *> Asignarle empleados.dat
		*> Sequential: Uno tras otro
		*> Line sequential: Linea tras linea
		ORGANIZATION IS LINE SEQUENTIAL. *> La organización es secuencial.

	DATA DIVISION.
	FILE SECTION. *> Se describe el archivo lógico.
	FD ARCHIVO-EMPLEADOS. *> FD: File descriptor.
		01 EMPLEADOS-REGISTRO.
			02 EMPLEADO-NOMBRE PIC X(6).
			02 EMPLEADO-APELLIDO PIC X(6).
			02 EMPLEADO-EDAD PIC X(2).

	WORKING-STORAGE SECTION.
		01 NOMBRE PIC X(20) VALUE SPACES.
		01 APELLIDO PIC X(20) VALUE SPACES.
		01 EDAD PIC x(6) VALUE SPACES.
		01 CONTINUAR PIC X VALUE "S".

	PROCEDURE DIVISION.
	MAIN.
		PERFORM APERTURA-ARCHIVO.
		PERFORM UNTIL CONTINUAR = "N" OR CONTINUAR = "n"
			PERFORM RECIBIR-REGISTROS
			PERFORM ESCRITURA-ARCHIVO
			PERFORM CONTINUAR-PROGRAMA
			ACCEPT CONTINUAR
		END-PERFORM.
		PERFORM CERRAR-ARCHIVO.
		STOP RUN.

	CONTINUAR-PROGRAMA.
		DISPLAY "Continuar programa: ".

	RECIBIR-REGISTROS.
		DISPLAY "Nombre: ".
		ACCEPT EMPLEADO-NOMBRE.
		DISPLAY "Apellido: ".
		ACCEPT EMPLEADO-APELLIDO.
		DISPLAY "Edad: ".
		ACCEPT EMPLEADO-EDAD.

	APERTURA-ARCHIVO.
		*> Modos de apertura:
		*> EXTEND: Agregar al final del archivo (permite crear).
		*> I-O: Escribir y leer (si existe).
		*> INPUT: Leer archivo (si existe).
		*> OUTPUT: Sobreescribir archivo (si existe).
		*> Para evitar errores en INPUT Y OUTPUT se lo debe
		*> abrir con OPTIONAL en FILE SECTION.
		OPEN EXTEND ARCHIVO-EMPLEADOS.
	
	ESCRITURA-ARCHIVO.
		WRITE EMPLEADOS-REGISTRO.

	CERRAR-ARCHIVO.
		CLOSE ARCHIVO-EMPLEADOS.
	END PROGRAM BASE1.
