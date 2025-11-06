#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

void llenar_vector(int vector[50]);
float calcular_promedio(int vector[]);
void mostrar_vector(int vector[]);

int main () {
    int vector[50];
    
    llenar_vector(vector);
    mostrar_vector(vector);
    

    return 0;
}

void llenar_vector (int vector[50]) {
    srand (time(0));
    for (int i=0; i<50; i++) {
        vector [i] = rand () % 1001;
    }
}

float calcular_promedio (int vector[]) {
    float suma = 0;

    for (int i=0; i<50; i++) {
        suma += vector[i];
    }
    suma = suma / 50;
    return suma;
}

void mostrar_vector (int vector[50]) {
    float promedio = calcular_promedio(vector);

    cout << "El promedio es: " << promedio << endl;

    for (int i=0; i<50; i++) {
        if (vector[i] > promedio) {
            cout << vector[i] << " ";
        }
    }
}