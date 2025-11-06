#include <iostream>
#include <string>

using namespace std;

int ContarPalabras(const string &texto);

int main() {
    string texto;
    cout << "Ingrese un texto: ";
    getline(cin, texto);

    int numPalabras = ContarPalabras(texto);
    cout << "Número de palabras: " << numPalabras << endl;

    return 0;
}

int ContarPalabras (const string &texto) {
    int contador = 0;
    size_t longtex = texto.length();

    for (int i = 0 ; i < longtex; i++) {
        if (texto[i] == ' ') {
            contador++;
        }
    }
    return contador +1; // sumo 1 para contar la ultima palabra que no tiene espacio despues
}

//Otra forma de hacerlo es usando un flag

int ContarPalabras(const string &texto) {
    int contador = 0;
    bool dentroPalabra = false;

    for (char c : texto) { // recorro cada caracter del string es lo mismo que usar un for con un indice (int i = 0 ; i < longtex; i++)
        if (c != ' ' && !dentroPalabra) {
            contador++;          // acaba de empezar una palabra
            dentroPalabra = true;
        }
        else if (c == ' ') {
            dentroPalabra = false; // cerramos la palabra
        }
    }
    return contador;
}