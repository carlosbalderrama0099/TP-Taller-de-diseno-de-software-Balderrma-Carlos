Proceso MatrizNxN
    Definir opcion, N Como Entero
    Definir matriz Como Entero
    Dimension matriz(20,20)
    Definir cargada Como Logico
    cargada = Falso
	
    Repetir
        Escribir ""
		Escribir "MENÚ MATRIZ N x N"
        Escribir "1 - Llenar matriz con valores aleatorios"
        Escribir "2 - Mostrar matriz completa"
        Escribir "3 - Sumar diagonal principal"
        Escribir "4 - Sumar todos los elementos"
        Escribir "5 - Salir"
		Escribir ""
        Leer opcion
		
        Segun opcion Hacer
            1:
                LlenarMatriz(matriz, N)
                cargada = Verdadero
            2:
                Si cargada Entonces
                    MostrarMatriz(matriz, N)
                SiNo
                    Escribir "Debe cargar la matriz primero."
                FinSi
            3:
                Si cargada Entonces
                    Escribir "Suma diagonal principal: ", SumarDiagonal(matriz, N)
                SiNo
                    Escribir "Debe cargar la matriz primero."
                FinSi
            4:
                Si cargada Entonces
                    Escribir "Suma total de la matriz: ", SumarTodo(matriz, N)
                SiNo
                    Escribir "Debe cargar la matriz primero."
                FinSi
            5:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida. Intente nuevamente."
        FinSegun
    Hasta Que opcion = 5
FinProceso

SubProceso LlenarMatriz(matriz Por Referencia, N Por Referencia)
    Definir i, j Como Entero
    Escribir "Ingrese tamaño N de la matriz:"
    Leer N
    Para i = 0 Hasta N-1 Con Paso 1 Hacer
        Para j = 0 Hasta N-1 Con Paso 1 Hacer
            matriz[i,j] = Aleatorio(1,100)
        FinPara
    FinPara
    Escribir "Matriz cargada correctamente."
FinSubProceso

SubProceso MostrarMatriz(matriz Por Referencia, N)
    Definir i, j Como Entero
    Escribir "Matriz completa:"
    Para i = 0 Hasta N-1 Con Paso 1 Hacer
        Para j = 0 Hasta N-1 Con Paso 1 Hacer
            Escribir Sin Saltar matriz[i,j], " "
        FinPara
        Escribir ""
    FinPara
FinSubProceso

Funcion suma = SumarDiagonal(matriz Por Referencia, N)
    Definir i,suma Como Entero
    suma = 0
    Para i = 0 Hasta N-1 Con Paso 1 Hacer
        suma = suma + matriz[i,i]
    FinPara
FinFuncion

Funcion total = SumarTodo(matriz Por Referencia, N)
    Definir i, j,total Como Entero
    total = 0
    Para i = 0 Hasta N-1 Con Paso 1 Hacer
        Para j = 0 Hasta N-1 Con Paso 1 Hacer
            total = total + matriz[i,j]
        FinPara
    FinPara
FinFuncion