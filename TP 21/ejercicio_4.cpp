#include <iostream>
using namespace std;

int main() {
    float radio, altura;

    cout << "Ingrese el radio del cono: ";
    cin >> radio;
    cout << "Ingrese la altura del cono: ";
    cin >> altura;

    float volumen = (1.0/3.0) * 3.14159 * pow(radio, 2) * altura;
    cout << "El volumen del cono es: " << volumen << endl;

    return 0;
}