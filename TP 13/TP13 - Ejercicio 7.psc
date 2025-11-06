Algoritmo Ejercicio_7
	Definir peso Como Entero
	Definir zona Como Caracter
	Definir base Como Entero
	
	Escribir "Ingrese el peso del paquete: ","KG"
	Leer peso
	
	Escribir ""
	Escribir "Zona A (Local): Sin impuesto"
	Escribir "Zona B (Nacional): Impuesto del 20% sobre el costo base"
	Escribir "Zona C (Internacional): Impuesto del 50% sobre el costo base"
	Escribir ""
	
	Escribir "Ingrese una letra (A/B/C), segun la Zona : "
	Leer zona
	
	zona = Mayusculas(zona)
	base = 50 * peso
	
	Segun zona Hacer
		"A":
			Escribir "El costo de envío para Zona A (Local) es: $", base
		"B":
			Escribir "El costo de envío para Zona B (Nacional) es: $", base + (base * 0.20)
		"C":
			Escribir "El costo de envío para Zona C (Internacional) es: $", base + (base * 0.50)
		De Otro Modo:
			Escribir "Opcion Incorrecta"
	Fin Segun
	
FinAlgoritmo
