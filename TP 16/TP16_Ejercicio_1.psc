Algoritmo TP16_Ejercicio_1
	Definir clave Como Cadena
    Definir intentos Como Entero
    intentos = 0
	
    Repetir
        Escribir "Intento número: ", intentos + 1, "/4"
		Escribir "Ingrese la clave de acceso: "
        Leer clave
        intentos = intentos + 1
		Si clave <> "cerbero" Y intentos < 4 Entonces
            Escribir "Clave incorrecta. Le quedan ", 4 - intentos, " intentos."
        FinSi
		Escribir ""
    Mientras Que clave <> "cerbero" Y intentos < 4
	
    Si clave = "cerbero" Entonces
        Escribir "Ingreso al sistema exitoso."
    Sino
        Escribir "Acceso denegado. Superó los 4 intentos permitidos."
    FinSi
FinAlgoritmo
