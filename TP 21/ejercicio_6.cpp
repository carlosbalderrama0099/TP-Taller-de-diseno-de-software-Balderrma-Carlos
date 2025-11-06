#include <iostream>
using namespace std;

int main() {
    int nota;

    cout << "Ingrese una nota (0-10): ";
    cin >> nota;

    if (nota >= 0 && nota <= 10) {
        if (nota == 10) {
            cout << "Excelente, Felicidades!" << endl;
        } else if (nota == 8 || nota == 9) {
            cout << "Muy bien, sigue así!" << endl;
        } else if (nota == 7) {
            cout << "Aprobado, pero puedes mejorar." << endl;
        } else if (nota == 6) {
            cout << "Aprobado, necesitas esforzarte más." << endl;
        } else {
            cout << "Reprobado, es necesario un plan de estudio." << endl;
        }
    } else {
        cout << "Nota invalida. Debe estar entre 0 y 10." << endl;
    }

    return 0;
}