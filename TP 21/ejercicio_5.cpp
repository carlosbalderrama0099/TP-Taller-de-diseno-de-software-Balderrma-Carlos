#include <iostream>
using namespace std;

int main(){
    float temperatura;
    int opcion;

    cout << "Ingrese la temperatura: ";
    cin >> temperatura;

    cout << "Seleccione la opcion de conversion:" << endl;
    cout << "1. Celsius a Fahrenheit" << endl;
    cout << "2. Fahrenheit a Celsius" << endl;
    cin >> opcion;

    switch (opcion) {
        case 1:
            cout << "Temperatura en Fahrenheit: " << (temperatura * 9/5) + 32 << endl;
            break;
        case 2:
            cout << "Temperatura en Celsius: " << (temperatura - 32) * 5/9 << endl;
            break;
        default:
            cout << "Opcion invalida." << endl;
    }

    return 0;
}