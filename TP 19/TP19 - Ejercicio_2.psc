Funcion esValido = EsNombreValido(nombre)
	Definir i Como Entero
	Definir esValido Como Logico
	
	esValido = Verdadero          // por ahora decimos que es válido hasta encontrar un error
	
	Si Longitud(nombre) < 8 Entonces
		esValido = Falso
	FinSi
	
	Si esValido Entonces
		Para i = 1 Hasta Longitud(nombre) Hacer     // ver que no tenga numeros
			Si Subcadena(nombre, i, i) >= "0" Y Subcadena(nombre, i, i) <= "9" Entonces
				esValido = Falso
				i = Longitud(nombre) 
			FinSi
		FinPara
	FinSi
	
Fin Funcion

SubProceso ObtenerNombreValido(nombreFinal Por Referencia)
	Definir nombre Como Cadena
	Definir codigoAleatorio Como Entero 
	Definir nombreAceptado Como Logico
	
	nombreAceptado = Falso
	
	Escribir "INGRESO DE NOMBRE DE USUARIO (CON REPETICIÓN)"
	
	Mientras nombreAceptado = Falso Hacer
		Escribir "Ingrese un nombre de usuario (>= 8 caracteres, sin números):"
		Leer nombre
		
		Si EsNombreValido(nombre) Entonces     // verificamos
			codigoAleatorio = Aleatorio(10, 99)
			nombreFinal = nombre + ConvertirATexto(codigoAleatorio)
			
			Escribir "¡Nombre VÁLIDO."
			Escribir "Su nombre de usuario final es: ", nombreFinal
			nombreAceptado = Verdadero
		Sino
			Escribir "Nombre NO VÁLIDO. Debe tener + de 8 caracteres y no contener números. Intente de nuevo."
		FinSi
	FinMientras
	
Fin SubProceso

Algoritmo TP19_Ejercicio_2
	Definir nombreUsuarioDefinitivo Como Cadena
	
	ObtenerNombreValido(nombreUsuarioDefinitivo)
	
	Escribir ""
	Si nombreUsuarioDefinitivo <> "" Entonces
		Escribir "El programa principal finalizó. Usuario: ", nombreUsuarioDefinitivo
	FinSi
	
FinAlgoritmo