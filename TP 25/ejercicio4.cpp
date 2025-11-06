#include <iostream>
using namespace std;

struct alumnos
{
    string nombre;
    string apellido;
    float nota1;
    float nota2;
    float nota3;
} alum[10];

void cargarAlumno(alumnos &alum);
void menu (int &opcion, alumnos alum[]);
void cambiarNotas(alumnos &alum);
float calcularPromedio(const alumnos &alum);
void mostrarMejorPromedio(const alumnos alum[], int size);
void mostrarDesaprobadosNota2(const alumnos alum[], int size);

int main()
{
    int opcion;

    for (int i = 0; i < 10; i++)
    {
        cout << "Cargando datos del alumno " << (i + 1) << ":\n";
        cargarAlumno(alum[i]);
    }

    menu(opcion, alum);

    return 0;
}

void cargarAlumno(alumnos &alum)
{
    cout << "Ingrese el nombre del alumno: ";
    getline(cin, alum.nombre);
    cout << "Ingrese el apellido del alumno: ";
    getline(cin, alum.apellido);
    cout << "Ingrese la nota 1: ";
    cin >> alum.nota1;
    cout << "Ingrese la nota 2: ";
    cin >> alum.nota2;
    cout << "Ingrese la nota 3: ";
    cin >> alum.nota3;
    cin.ignore(); // Limpiar el buffer de entrada
}

void menu (int &opcion, alumnos alum[])
{
    int numeroAlumno;
    do
    {
        cout << "\nMenu de opciones:\n";
        cout << "1. Cambiar las notas de un alumno\n";
        cout << "2. Calcular el promedio de un alumno\n";
        cout << "3. Mostrar el alumno con mejor promedio\n";
        cout << "4. mostrar los alumnos desaprobados en la segunda nota\n";
        cout << "5. Salir\n";
        cout << "Ingrese una opcion: ";
        cin >> opcion;
        cin.ignore(); // Limpiar el buffer de entrada

        switch (opcion)
        {
        case 1:
            cout << "Ingrese el numero del alumno (1-10): ";
            cin >> numeroAlumno;
            cin.ignore(); // Limpiar el buffer de entrada
            cambiarNotas(alum[numeroAlumno - 1]);
            break;
        
        case 2:
            cout << "Ingrese el numero del alumno (1-10): ";
            cin >> numeroAlumno;
            cin.ignore(); // Limpiar el buffer de entrada
            cout << "El promedio del alumno es: " << calcularPromedio(alum[numeroAlumno - 1]) << endl;
            break;
        case 3:
            mostrarMejorPromedio(alum, 10);
            break;
        case 4:
            mostrarDesaprobadosNota2(alum, 10);
            break;
        default:
            break;
        }
        
    } while (opcion != 5);
}

void cambiarNotas(alumnos &alum)
{
    cout << "Ingrese la nueva nota 1: ";
    cin >> alum.nota1;
    cout << "Ingrese la nueva nota 2: ";
    cin >> alum.nota2;
    cout << "Ingrese la nueva nota 3: ";
    cin >> alum.nota3;
    cin.ignore(); // Limpiar el buffer de entrada
}

float calcularPromedio(const alumnos &alum)
{
    return (alum.nota1 + alum.nota2 + alum.nota3) / 3;
}

void mostrarMejorPromedio(const alumnos alum[], int size)
{
    float mejorPromedio = 0;
    string nombreMejor, apellidoMejor;

    for (int i = 0; i < size; i++)
    {
        float promedio = calcularPromedio(alum[i]);
        if (promedio > mejorPromedio)
        {
            mejorPromedio = promedio;
            nombreMejor = alum[i].nombre;
            apellidoMejor = alum[i].apellido;
        }
    }

    cout << "El alumno con mejor promedio es: " << nombreMejor << " " << apellidoMejor << " con un promedio de: " << mejorPromedio << "\n";
}

void mostrarDesaprobadosNota2(const alumnos alum[], int size)
{
    cout << "Alumnos desaprobados en la segunda nota:\n";
    for (int i = 0; i < size; i++)
    {
        if (alum[i].nota2 < 6.0)
        {
            cout << alum[i].nombre << " " << alum[i].apellido << " con nota 2: " << alum[i].nota2 << "\n";
        }
    }
}