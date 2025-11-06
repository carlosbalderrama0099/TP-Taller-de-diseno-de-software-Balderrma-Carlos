#include <iostream>

using namespace std;

void llenar_matriz(int filas, int columnas, int matriz[][15]);
void mostrar_matriz(int filas, int columnas, int matriz[][15]);

int main () 
{
    int matriz[5][15];
    int filas = 5, columnas = 15;

    llenar_matriz(filas, columnas, matriz);
    mostrar_matriz(filas, columnas, matriz);

    return 0;
}

void llenar_matriz(int filas, int columnas, int matriz[][15])
{ 
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            if (i == 0 || j ==0 || i == filas -1  || j == columnas - 1) {
                matriz[i][j] = 1;
            } else {
                matriz[i][j] = 0;
            }
            
        }
     } 
}

void mostrar_matriz(int filas, int columnas, int matriz[][15])
{
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            cout << matriz[i][j] << " ";
        }
        cout << endl;
    }
}