Algoritmo Ejercicio_1
	Definir intento, contador Como Entero
    Definir clave Como Cadena
    contador = 0
    Repetir
        Escribir "Intento número ", contador + 1, "/3"
		Escribir "Ingrese la clave secreta:"
        Leer clave
        contador = contador + 1
		Si clave <> "delta123" Y contador < 3 Entonces
            Escribir "Clave incorrecta. Le quedan ", 3 - contador, " intentos."
        FinSi
    Mientras Que clave <> "delta123" Y contador < 3
	
    Si clave = "delta123" Entonces
        Escribir "Bienvenido al buzón digital"
    Sino
        Escribir "Acceso bloqueado"
    FinSi
FinAlgoritmo
