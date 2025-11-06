#include <iostream>
using namespace std;

int main() {
    float total_alumnos, ninos,ninas, porcentaje_ninos, porcentaje_ninas;

    cout << "Ingrese el total de alumnos: ";
    cin >> total_alumnos;

    cout << "Ingrese el numero de ninos: ";
    cin >> ninos;

    cout << "Ingrese el numero de ninas: ";
    cin >> ninas;

    porcentaje_ninos = (ninos / total_alumnos) * 100;
    porcentaje_ninas = (ninas / total_alumnos) * 100;

    cout << "Porcentaje de ninos: " << porcentaje_ninos << "%" << endl;
    cout << "Porcentaje de ninas: " << porcentaje_ninas << "%" << endl;

    return 0;
}