#include <iostream>
#include <cmath>
using namespace std;

int main() {
    float numero, resultado_raiz, resultado_cuadrado;
    cout << "Ingrese un numero: ";
    cin >> numero;

    resultado_cuadrado = pow(numero, 2 );
    resultado_raiz = sqrt(numero);

    cout << "El cuadrado de " << numero << " es: " << resultado_cuadrado << endl;
    cout << "La raiz cuadrada de " << numero << " es: " << resultado_raiz << endl;

    return 0;
}