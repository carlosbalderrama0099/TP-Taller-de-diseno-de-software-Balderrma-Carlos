#include <iostream>
using namespace std;

void calcular_imc (float peso, float altura, float &imc);
void mostrar_categoria (float imc);

int main () 
{
    float peso, altura, imc;

    cout << "Ingrese su peso en kg: ";
    cin >> peso;
    cout << "Ingrese su altura en metros: ";
    cin >> altura;

    calcular_imc(peso, altura, imc);
    mostrar_categoria(imc);

    return 0;
}

void calcular_imc (float peso, float altura, float &imc)
{
    imc = peso / (altura * altura);
}

void mostrar_categoria (float imc)
{
    if (imc < 18.5) {
        cout << "Bajo peso" << endl;
    } else if (imc >= 18.5 && imc < 24.9) {
        cout << "Normopeso" << endl;
    } else if (imc >= 25 && imc < 29.9) {
        cout << "Sobrepeso grado 1" << endl;
    } else if (imc >= 30 && imc < 34.9) {
        cout << "obesidad grado 1" << endl;
    } else if (imc >= 35 && imc < 39.9) {
        cout << "obesidad grado 2" << endl;
    } else if (imc >= 40 && imc < 49.9) {
        cout << "obesidad grado 3 (mórbida)" << endl;
    } else if (imc >= 50 && imc < 59.9) {
        cout << "obesidad grado 4 (extrema)" << endl;
    }
}