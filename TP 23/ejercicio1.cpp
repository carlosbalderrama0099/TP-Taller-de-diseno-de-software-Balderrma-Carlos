#include <iostream>
using namespace std;

void potencia (int base, int exponente, int &resultado);

int main () {
    int base, exponente, resultado;
    system("clear");
    cout << "Ingrese la base: ";
    cin >> base;
    cout << "Ingrese el exponente: ";
    cin >> exponente;
    potencia(base, exponente, resultado);
    cout << base << " elevado a " << exponente << " es " << resultado << endl;
    return 0;
}

void potencia (int base, int exponente, int &resultado) {
    resultado = 1;
    for (int i = 0; i < exponente; i++) {
        resultado *= base;
    }
}