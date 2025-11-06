#include <iostream>
#include <limits>
using namespace std;

int main () {
    float precio = 0;
    cout << "Ingrese el precio del producto: " << endl;
    cin >> precio;
    if (precio >= 1000) {
        cout << "El precio con el descuento es: " << precio * 0.85 << " $" << endl;
    }
    else {
        cout << "El precio es: " << precio << " $" << endl;
    }
    return 0;
}