#include <iostream>
#include <string>

using namespace std;

void validarmail (string mail);

int main () {
    string mail;
    cout << "Ingrese su mail: ";
    cin >> mail;

    if (ValidarEmail(mail)) {
        cout << "El mail es válido." << endl;
    } else {
        cout << "El mail no es válido." << endl;
    }

    return 0;
}

bool ValidarEmail(string mail) {
    int posArroba = mail.find('@');

    // Debe contener exactamente un @
    if (posArroba == string::npos) return false; // no hay @
    if (mail.find('@', posArroba + 1) != string::npos) return false; // hay más de uno

    // Debe haber al menos un punto después del @
    int posPunto = mail.find('.', posArroba); // buscar punto después del @
    if (posPunto == string::npos) return false; // no hay punto después del @

    return true; // cumple todas las condiciones
}