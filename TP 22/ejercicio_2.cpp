#include <iostream>
using namespace std;

void calcular_areas (float base, float altura);

int main () 
{
    float base, altura;

    cout << "Ingrese la base del rectangulo: ";
    cin >> base;
    cout << "Ingrese la altura del rectangulo: ";
    cin >> altura;

    calcular_areas(base, altura);

    return 0;
}

void calcular_areas (float base, float altura)
{
    float area_cuadrado, area_rectangulo, area_triangulo;

    area_cuadrado = base * base;
    area_rectangulo = base * altura;
    area_triangulo = (base * altura) / 2;
    cout << "El area del cuadrado es: " << area_cuadrado << endl;
    cout << "El area del rectangulo es: " << area_rectangulo << endl;
    cout << "El area del triangulo es: " << area_triangulo << endl;
}