Algoritmo Ejercicio_6
	Definir numero, intento, contador Como Entero
    numero = Aleatorio(1, 100)
    contador = 0
	
    Repetir
        Escribir "Adivine el número (entre 1 y 100):"
        Leer intento
        contador = contador + 1
		
        Si intento < numero Entonces
            Escribir "El número es más alto."
        Sino
            Si intento > numero Entonces
                Escribir "El número es más bajo."
            FinSi
        FinSi
    Mientras Que intento <> numero
	
    Escribir "¡Correcto! Lo adivinó en ", contador, " intentos."
FinAlgoritmo
