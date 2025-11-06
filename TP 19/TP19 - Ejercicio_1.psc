Funcion resultado = ValidarUsuario(nombre)
	Definir resultado Como Logico
	Definir i, codigoAleatorio Como Entero
	Definir esValido Como Logico
	
	esValido = Verdadero      // por ahora decimos que es válido hasta encontrar un error
	
	Si Longitud(nombre) < 8 Entonces
		Escribir "El nombre NO es válido: Debe tener al menos 8 caracteres."
		esValido = Falso
	FinSi
	
	Si esValido Entonces
		Para i = 1 Hasta Longitud(nombre) Hacer       // ver que no tenga numeros
			Si Subcadena(nombre, i, i) >= "0" Y Subcadena(nombre, i, i) <= "9" Entonces 
				esValido = Falso
				i = Longitud(nombre)
			FinSi
		FinPara
	FinSi
	
	Si esValido Entonces
		codigoAleatorio = Aleatorio(10, 99)     //agrega el numero
		nombre = nombre + ConvertirATexto(codigoAleatorio)
		
		Escribir "Nombre de usuario VÁLIDO."
		Escribir "Nombre final de usuario: ", nombre
		resultado = Verdadero
	Sino
		resultado = Falso
	FinSi
	
Fin Funcion

Algoritmo Ejercicio_1
	Definir nombreUsuario Como Cadena
	Definir esValido Como Logico
	
	Escribir " VALIDACIÓN DE NOMBRE DE USUARIO "
	Escribir "Ingrese un nombre de usuario para validar:"
	Leer nombreUsuario
	
	esValido = ValidarUsuario(nombreUsuario)     // Llamamos a la función. 
	
FinAlgoritmo