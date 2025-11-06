#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

void llenar_matriz(int filas, int columnas, int matriz[][100]);
void mostrar_matriz(int filas, int columnas, int matriz[][100]);

int main () 
{
    int matriz[100][100];
    int filas, columnas;

    cout << "Ingrese la cantidad de filas (max 100): ";
    cin >> filas;
    cout << "Ingrese la cantidad de columnas (max 100): ";
    cin >> columnas;

    llenar_matriz(filas, columnas, matriz);
    mostrar_matriz(filas, columnas, matriz);

    return 0;
}

void llenar_matriz(int filas, int columnas, int matriz[][100])
{ 
    srand(time(0)); // Semilla para numeros aleatorios
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            matriz[i][j] = rand() % 100; // Numeros aleatorios entre 0 y 99
        }
    }
}

void mostrar_matriz(int filas, int columnas, int matriz[][100]) 
{
    cout << "Matriz generada:" << endl;
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++)
        {
            cout << matriz[i][j] << "\t";
        }
        cout << endl;
    }
}