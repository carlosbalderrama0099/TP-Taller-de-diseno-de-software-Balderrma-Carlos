Funcion cantidad = ContarLetra (frase, letra)
	Definir cantidad Como Entero
	Definir i Como Entero
	Definir longitud_frase Como Entero
	Definir caracter_actual Como Caracter
	
	cantidad = 0
	longitud_frase = Longitud(frase)
	
	Para i = 1 Hasta longitud_frase Con Paso 1 Hacer
		caracter_actual = Subcadena(frase, i, i)
		
		Si Mayusculas(caracter_actual) = Mayusculas(letra) Entonces
			cantidad = cantidad + 1
		FinSi
	FinPara
	
Fin Funcion

Algoritmo Ejercicio_4
	
	Definir frase_usuario Como Caracter
	Definir letra_usuario Como Caracter
	Definir veces_encontrada Como Entero
	
	Escribir "Ingrese una frase:"
	Leer frase_usuario
	
	Escribir "Ingrese una letra a buscar:"
	Leer letra_usuario
	
	Si Longitud(letra_usuario) <> 1 Entonces
		Escribir "Debe ingresar solo UN caracter para buscar."
	SiNo
		veces_encontrada = ContarLetra(frase_usuario, letra_usuario)     // Llama la función
		Escribir ""
		Escribir "La letra ", letra_usuario, " se encontro ", veces_encontrada, " veces en la frase."
	FinSi
	
FinAlgoritmo