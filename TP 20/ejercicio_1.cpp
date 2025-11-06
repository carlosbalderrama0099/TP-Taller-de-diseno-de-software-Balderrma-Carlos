#include <iostream>
using namespace std;

int main () {
    float pago_por_hora, sueldo_semanal;
    cout << "Ingresa el pago por hora: " << endl;
    cin >> pago_por_hora;

    sueldo_semanal = pago_por_hora * 8 * 5;

    cout << "El sueldo semanal es: "<< sueldo_semanal <<"  $"<< endl;
    return 0;
}   