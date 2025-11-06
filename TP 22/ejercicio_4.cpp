#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;

int main () {
    int num1, num2;
    bool encontrado = false;
    
    srand(time(0)); // Semilla para numeros aleatorios
    num2 = 1 + rand() % 100; // Numero aleatorio entre 1 y 100
    cout << "Numero aleatorio generado. Intente adivinarlo!" << endl;

    for (int i = 0; i < 5; i++)
    {
    cout << "\nIntento " << (i + 1) << ": Ingrese un numero para comparar: ";
    cin >> num1;
    if (num1 < num2) {
        cout << " El numero es menor que el numero aleatorio." << endl;
    } else if (num1 > num2) {
        cout << " El numero es mayor que el numero aleatorio." << endl;
    } else if (num1 == num2) {
        cout << " Los numeros son iguales. Felicitaciones!" << endl;
        encontrado = true;
        break;
    }
    }
    if (!encontrado) {
        cout << "\nNo se encontro el numero en los 5 intentos." << endl;
    }
    
}