#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

void llenar_vector (int vector[100]);
void clasificador (int vector[100]);
void mostrar_resultados (int deficientes, int regulares, int buenos, int excelentes);

int main () {
    int vector [100];

    llenar_vector(vector);
    clasificador(vector);

    return 0;
}

void llenar_vector (int vector[100]) {
    srand (time(0));
    for (int i=0; i<100; i++) {
        vector [i] = rand () % 10 + 1;
    }
}

void clasificador (int vector[100]) {
    int deficientes = 0;
    int regulares = 0;
    int buenos = 0;
    int excelentes = 0;

    for (int i=0; i<100; i++) {
        if (vector[i] >= 1 && vector[i] <= 3) {
            deficientes++;
        } else if (vector[i] >= 4 && vector[i] <= 6) {
            regulares++;
        } else if (vector[i] >= 7 && vector[i] <= 8) {
            buenos++;
        } else if (vector[i] >= 9 && vector[i] <= 10) {
            excelentes++;
        }
    }
    mostrar_resultados(deficientes, regulares, buenos, excelentes);
}

void mostrar_resultados (int deficientes, int regulares, int buenos, int excelentes) {
    cout << "Deficientes: " << deficientes << endl;
    cout << "Regulares: " << regulares << endl;
    cout << "Buenos: " << buenos << endl;
    cout << "Excelentes: " << excelentes << endl;
}