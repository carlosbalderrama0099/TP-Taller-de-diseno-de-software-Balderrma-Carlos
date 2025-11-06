#include <iostream>
#include <cmath>
using namespace std;

int main() {
    float radio, altura, volumen;
    const float PI = 3.1416;

    cout << "Ingrese el radio del cono: ";
    cin >> radio;

    cout << "Ingrese la altura del cono: ";
    cin >> altura;

    volumen = (1.0/3.0) * PI * pow(radio, 2) * altura;

    cout << "El volumen del cono es: " << volumen <<" cm cubicos" << endl;

    return 0;
}