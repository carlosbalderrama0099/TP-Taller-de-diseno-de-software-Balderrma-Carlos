#include <iostream>
using namespace std;

int main() {
    int limite_inf, limite_sup, numero, tabla, aux;

    cout << "Ingrese el limite inferior del rango: ";
    cin >> limite_inf;
    cout << "Ingrese el limite superior del rango: ";
    cin >> limite_sup;
    cout << "Ingrese el numero para generar la tabla de multiplicar: ";
    cin >> numero;
    aux = limite_inf;

    for (int i = limite_inf; i <= limite_sup; i++) {
        tabla = numero * aux;
        aux++;
        cout << tabla << endl;
    }

    return 0;
}