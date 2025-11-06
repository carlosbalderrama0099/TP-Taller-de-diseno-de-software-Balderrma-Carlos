#include <iostream>
using namespace std;

struct empleado {
    string nombre;
    float horas_trabajadas;
    float tarifa_por_hora;
} emp[4];

void cargarEmpleado(empleado &emp);
void mostrarEmpleado(const empleado &emp);
void identificarMayorPago(const empleado emp[], int size);

int main() {
    for (int i = 0; i < 4; i++) {
        cout << "Cargando datos del empleado " << (i + 1) << ":\n";
        cargarEmpleado(emp[i]);
    }

    cout << "\nDatos de los empleados:\n";
    for (int i = 0; i < 4; i++) {
        mostrarEmpleado(emp[i]);
    }

    identificarMayorPago(emp, 4);

    return 0;
}

void cargarEmpleado(empleado &emp) {
    cout << "Ingrese el nombre del empleado: ";
    getline(cin, emp.nombre);
    cout << "Ingrese las horas trabajadas: ";
    cin >> emp.horas_trabajadas;
    cout << "Ingrese la tarifa por hora: ";
    cin >> emp.tarifa_por_hora;
    cin.ignore();  // Limpiar el buffer de entrada
}

void mostrarEmpleado(const empleado &emp) {
    cout << "Nombre: " << emp.nombre << "\n";
    cout << "Horas trabajadas: " << emp.horas_trabajadas << "\n";
    cout << "Tarifa por hora: " << emp.tarifa_por_hora << "\n";
    cout << "Pago total: " << (emp.horas_trabajadas * emp.tarifa_por_hora) << "\n\n";
}

void identificarMayorPago(const empleado emp[], int size) {
    float mayorPago = 0;
    string nombreMayor;

    for (int i = 0; i < size; i++) {
        float pago = emp[i].horas_trabajadas * emp[i].tarifa_por_hora;
        if (pago > mayorPago) {
            mayorPago = pago;
            nombreMayor = emp[i].nombre;
        }
    }

    cout << "El empleado con mayor pago es: " << nombreMayor << " con un pago de: " << mayorPago << "\n";
}
