#include <iostream>
using namespace std;

bool numEsPerfecto(int n);

int main() {
    int numero;
    cout << "Ingrese un número para verificar si es perfecto: ";
    cin >> numero;

    if (numEsPerfecto(numero)) {
        cout << numero << " es un número perfecto." << endl;
    } else {
        cout << numero << " no es un número perfecto." << endl;
    }

    return 0;
}

bool numEsPerfecto(int n) {
    if (n < 1) return false; // Los números perfectos son positivos

    int sumaDivisores = 0;
    for (int i = 1; i <= n / 2; i++) {
        if (n % i == 0) {
            sumaDivisores += i;
        }
    }
    return sumaDivisores == n;
}