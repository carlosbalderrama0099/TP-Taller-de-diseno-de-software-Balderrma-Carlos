Algoritmo TP16_Ejercicio_7
	Definir N, X, intentos, diferencia Como Entero
    N = Aleatorio(1, 500)
    intentos = 10
	
    Escribir "Adivine el número (entre 1 y 500). Tiene 10 intentos."
	
    Repetir
        Escribir "Intento ", 11 - intentos, ": Ingrese su número:"
        Leer X
        diferencia = Abs(N - X)
		Si X = N Entonces
            Escribir "¡Felicidades! Adivinó el número en ", 11 - intentos, " intentos."
        Sino
            Si X < N Entonces
                Si diferencia > 50 Entonces
                    Escribir "El número es MUCHO MAYOR."
                Sino
                    Si diferencia >= 10 Entonces
                        Escribir "El número es ALGO MAYOR."
                    Sino
                        Escribir "El número es POQUITO MAYOR."
                    FinSi
                FinSi
            Sino
                Si diferencia > 50 Entonces
                    Escribir "El número es MUCHO MENOR."
                Sino
                    Si diferencia >= 10 Entonces
                        Escribir "El número es ALGO MENOR."
                    Sino
                        Escribir "El número es POQUITO MENOR."
                    FinSi
                FinSi
            FinSi
            intentos = intentos - 1
        FinSi
    Mientras Que X <> N Y intentos > 0
	
    Si intentos = 0 Y X <> N Entonces
		Escribir ""
        Escribir "¡Lo siento! No adivinó el número. El número era: ", N
    FinSi
		
FinAlgoritmo
