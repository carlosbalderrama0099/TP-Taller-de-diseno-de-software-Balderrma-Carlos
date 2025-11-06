#include <iostream>
#include <limits>
using namespace std;

int main() {
    float imc, m, t;
    cout << "Digite su masa en kg: " << endl;
    cin >> m;
    cout<< "Digite su talla en metros: " << endl;
    cin >> t;

    imc = m / (t * t);

    if (imc < 18.5)
    {
        cout << "Insuficiencia ponderal" << endl;
    }
    else if (imc >= 18.5 && imc <= 24.9)
    {
        cout << "Intervalo Normal" << endl;
    }
    else if (imc >= 25.0 && imc <= 29.9)
    {
        cout << "Preobesidad" << endl;
    }
    else if (imc >= 30.0 && imc <= 34.9)
    {
        cout << "Obesidad clase 1" << endl;
    }
    else if (imc >= 35.0 && imc <= 39.9)
    {
        cout << "Obesidad clase 2" << endl;
    }
    else if (imc >= 40.0)
    {
        cout << "Obesidad clase 3" << endl;
    }
    return 0;
}