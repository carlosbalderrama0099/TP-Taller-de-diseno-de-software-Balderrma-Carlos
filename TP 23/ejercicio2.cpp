#include <iostream>
#include <string>
#include <cstdlib>
#include <ctime>

using namespace std;

string GenerarContrasena(int longitud = 8);

int main(){
    srand(time(0)); // Semilla para la generación de números aleatorios
    string contra = GenerarContrasena();
    cout << "Contraseña generada: " << contra << endl;
    return 0;
}

string GenerarContrasena(int longitud) {
    const string mayusculas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    const string minusculas = "abcdefghijklmnopqrstuvwxyz";
    const string numeros = "0123456789";
    const string caracteresEspeciales = "!@#$%^&*()_+-=[]{}|;:,.<>?";
    const string todo = mayusculas + minusculas + numeros + caracteresEspeciales;

    //reservar espacio en memoria para la contraseña
    string contrasena;
    contrasena.reserve(longitud);

    // Asegurar que la contraseña tenga al menos un carácter de cada tipo si la longitud lo permite
    if (longitud >=4) {
        contrasena.push_back(mayusculas[rand() % mayusculas.size()]);
        contrasena.push_back(minusculas[rand() % minusculas.size()]);
        contrasena.push_back(numeros[rand() % numeros.size()]);
        contrasena.push_back(caracteresEspeciales[rand() % caracteresEspeciales.size()]);
    }

    // Rellenar el resto de la contraseña con caracteres aleatorios
    while (contrasena.size() < longitud) {
        contrasena.push_back(todo[rand() % todo.size()]);
    }

    // Mezclar la contraseña para evitar patrones
    for (size_t i = contrasena.size(); i > 1; --i) {
        size_t j = rand() % i;
        swap(contrasena[i - 1], contrasena[j]); // Mezcla la contraseña
    }

    return contrasena;
}