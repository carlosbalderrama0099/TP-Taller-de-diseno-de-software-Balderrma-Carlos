SubProceso LlenarVector(v Por Referencia, N)
    Definir i Como Entero
    Para i=0 Hasta N-1 Con Paso 1 Hacer
        v[i] = Aleatorio(-100,100)
    FinPara
FinSubProceso

SubProceso OperarVectores(A,B,C Por Referencia,N,operacion)
    Definir i Como Entero
    Para i=0 Hasta N-1 Con Paso 1 Hacer
        Segun operacion Hacer
            1: C[i] = A[i] + B[i]   
            2: C[i] = B[i] - A[i]   
        FinSegun
    FinPara
FinSubProceso

SubProceso MostrarVector(v,N,nombre)
    Definir i Como Entero
    Escribir nombre, ": "
    Para i=0 Hasta N-1 Con Paso 1 Hacer
        Escribir Sin Saltar v[i], " "
    FinPara
    Escribir ""
FinSubProceso

Algoritmo Ejercicio_4
    Definir v,i,N, opcion Como Entero
    Definir vectorA,vectorB,vectorC Como Entero
    Definir eleccion Como Caracter
    
    Escribir "Ingrese tamaño de los vectores (N): "
    Leer N
    Dimension vectorA[N],vectorB[N],vectorC[N]
    
    Repetir
        Escribir "1. Cargar Vector A"
        Escribir "2. Cargar Vector B"
        Escribir "3. Suma A + B -> C"
        Escribir "4. Resta B - A -> C"
        Escribir "5. Mostrar vector"
        Escribir "6. Salir"
        Leer opcion
        
        Segun opcion Hacer
            1:
				LlenarVector(vectorA,N)
            2: 
				LlenarVector(vectorB,N)
            3: 
				OperarVectores(vectorA,vectorB,vectorC,N,1)
            4: 
				OperarVectores(vectorA,vectorB,vectorC,N,2)
            5: Escribir "¿Qué vector mostrar (A/B/C)? "
				Leer eleccion
				eleccion = Mayusculas(eleccion)
				Segun eleccion Hacer
					"A":
						MostrarVector(vectorA,N,"Vector A")
					"B":
						MostrarVector(vectorB,N,"Vector B")
					"C":
						MostrarVector(vectorC,N,"Vector C")
				FinSegun
        FinSegun
    Hasta Que opcion=6
FinAlgoritmo