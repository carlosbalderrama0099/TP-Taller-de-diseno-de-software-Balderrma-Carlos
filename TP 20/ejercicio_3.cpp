#include <iostream>
using namespace std;

int main() {
    float precio_final, precio_producto;
    cout<<"Ingrese el precio del producto: "<<endl;
    cin>>precio_producto;

    if(precio_producto > 1000) {
        precio_final = precio_producto * 0.85; // Aplicar 15% de descuento
    } else {
        precio_final = precio_producto;
    }

    cout<<"El precio final es: "<<precio_final<<". $"<<endl;

    return 0;
}