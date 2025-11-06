#include <iostream>
#include <string>
#include <cctype>

using namespace std;

int ContarVocales(const string &tex);

int main () {
    string texto;
    int numVocales;

    cout << "Ingrese un texto: ";
    getline(cin, texto);

    numVocales = ContarVocales(texto);
    cout << "Número de vocales: " << numVocales << endl;

    return 0;
}

int ContarVocales (const string &tex) {
    int contador = 0;

    for (char c : tex) {
        c = tolower(c); // Convertir a minúscula para simplificar la comparación
        if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
            contador++;
        }
    }
    return contador;
}