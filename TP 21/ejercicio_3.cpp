#include <iostream>
#include <limits>
using namespace std;

int main() {
    int numero, raiz, cuadrado;
    cout << "Ingrese un numero entero: ";
    cin >> numero;

    raiz = sqrt(numero);
    cuadrado = pow(numero, 2);

    cout << "La raiz cuadrada de " << numero << " es " << raiz << endl;
    cout << "El cuadrado de " << numero << " es " << cuadrado << endl;

    return 0;
}