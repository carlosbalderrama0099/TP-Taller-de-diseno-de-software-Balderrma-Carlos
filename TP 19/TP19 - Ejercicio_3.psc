Proceso GestionNotas
    Definir opcion, N Como Entero
    Definir notas Como Entero
    Dimension notas(100)
    Definir cargadas Como Logico
    cargadas = Falso
	
    Repetir
        Escribir "MENÚ DE OPCIONES"
        Escribir "1 - Cargar Notas"
        Escribir "2 - Calcular Promedio"
        Escribir "3 - Identificar Aprobados y Reprobados"
        Escribir "4 - Encontrar la Nota Más Alta"
        Escribir "5 - Mostrar Todas las Notas"
        Escribir "6 - Salir"
        Leer opcion
		
        Segun opcion Hacer
            1:
                CargarNotas(notas, N)
                cargadas = Verdadero
            2:
                Si cargadas Entonces
                    Escribir "El promedio es: ", CalcularPromedio(notas, N)
                SiNo
                    Escribir "Debe cargar las notas primero."
                FinSi
            3:
                Si cargadas Entonces
                    AprobadosYReprobados(notas, N)
                SiNo
                    Escribir "Debe cargar las notas primero."
                FinSi
            4:
                Si cargadas Entonces
                    NotaMasAlta(notas, N)
                SiNo
                    Escribir "Debe cargar las notas primero."
                FinSi
            5:
                Si cargadas Entonces
                    MostrarNotas(notas, N)
                SiNo
                    Escribir "Debe cargar las notas primero."
                FinSi
        FinSegun
    Hasta Que opcion = 6
FinProceso

SubProceso CargarNotas(notas Por Referencia, N Por Referencia)
    Definir i Como Entero
    Escribir "Ingrese la cantidad de alumnos:"
    Leer N
    Para i = 0 Hasta N-1 Con Paso 1 Hacer
        notas[i] = Aleatorio(1,10)
    FinPara
    Escribir "Notas cargadas correctamente."
FinSubProceso

Funcion promedio <- CalcularPromedio(notas Por Referencia, N)
    Definir suma, i Como Entero
    Definir promedio Como Real
    suma = 0
    Para i = 0 Hasta N-1 Con Paso 1 Hacer
        suma = suma + notas[i]
    FinPara
    promedio = suma / N
FinFuncion

SubProceso AprobadosYReprobados(notas Por Referencia, N)
    Definir i, aprob, reprob Como Entero
    aprob = 0
    reprob = 0
    Para i = 0 Hasta N-1 Con Paso 1 Hacer
        Si notas[i] >= 6 Entonces
            aprob = aprob + 1
        SiNo
            reprob = reprob + 1
        FinSi
    FinPara
    Escribir "Aprobados: ", aprob
    Escribir "Reprobados: ", reprob
FinSubProceso

SubProceso NotaMasAlta(notas Por Referencia, N)
    Definir i, mayor, pos Como Entero
    mayor = notas[0]
    pos = 0
    Para i = 1 Hasta N-1 Con Paso 1 Hacer
        Si notas[i] > mayor Entonces
            mayor = notas[i]
            pos = i
        FinSi
    FinPara
    Escribir "Nota más alta: ", mayor, " (Alumno ", pos + 1, ")"
FinSubProceso

SubProceso MostrarNotas(notas Por Referencia, N)
    Definir i Como Entero
    Escribir "Listado de notas:"
    Para i = 0 Hasta N-1 Con Paso 1 Hacer
        Escribir "Alumno ", i+1, ": ", notas[i]
    FinPara
FinSubProceso