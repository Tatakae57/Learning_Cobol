		IDENTIFICATION DIVISION.
		PROGRAM-ID. P-THRU.

		DATA DIVISION.
		WORKING-STORAGE SECTION.
			01 NOMBRE PIC X(20).
			01 APELLIDO PIC X(20).
			01 EDAD PIC 99.

		PROCEDURE DIVISION.
		SOICITA-DATOS.
			PERFORM SOLICITA-NOMBRE THRU SOLICITA-APELLIDO.
			PERFORM SOLICITA-EDAD.
			DISPLAY
		 	"Nombre: " NOMBRE "Apellido: "
		 	APELLIDO "Edad: " EDAD.
		 	STOP RUN.

		 SOLICITA-NOMBRE.
		 	DISPLAY "Inserta tu nombre: ".
		 	ACCEPT NOMBRE.

		 SOLICITA-APELLIDO.
		 	DISPLAY "Inserta tu apellido: ".
		 	ACCEPT APELLIDO.

		 SOLICITA-EDAD.
		 	DISPLAY "Inserta tu edad: ".
		 	ACCEPT EDAD.

		 END PROGRAM P-THRU.
		 