#include <iostream>
using namespace std;

struct producto
{
    int codigo;
    string nombre;
    float precio;
    int stock;
};

void cargarProducto(producto &prod);
void valorTotal(const producto &prod, float &precio_valor_total);
void listarProductos(const producto prod[], int &cantidad_menor_10);

int main()
{
    producto prod[5];
    float precio_valor_total = 0.0;
    int cantidad_menor_10 = 0;

    for (int i = 0; i < 5; i++)
    {
        cout << "\n--- Ingresar datos del producto " << i + 1 << " ---" << endl;
        cargarProducto(prod[i]);
    }

    

    for (int i = 0; i < 5; i++)
    {
        valorTotal(prod[i], precio_valor_total);
    }

    listarProductos(prod, cantidad_menor_10);

    cout << "\nEl valor total de todos los productos en stock es: $" << precio_valor_total << endl;
    cout << "Cantidad de productos con stock menor a 10 unidades: " << cantidad_menor_10 << endl;

    return 0;
}

void cargarProducto(producto &prod)
{
    cout << "Ingrese el codigo del producto: ";
    cin >> prod.codigo;
    cin.ignore(); // Limpiar el buffer de entrada
    cout << "Ingrese el nombre del producto: ";
    getline(cin, prod.nombre);
    cout << "Ingrese el precio del producto: ";
    cin >> prod.precio;
    cout << "Ingrese el stock del producto: ";
    cin >> prod.stock;
}

void valorTotal(const producto &prod, float &precio_valor_total)
{
    float valor_producto_total = prod.precio * prod.stock;
    precio_valor_total += valor_producto_total;
}

void listarProductos(const producto prod[], int &cantidad_menor_10)
{
    for (int i = 0; i < 5; i++)
    {
        if (prod[i].stock < 10)
        {
            cantidad_menor_10++;
            cout << "\n Producto con stock menor a 10 unidades:" << endl;
            cout << "Codigo: " << prod[i].codigo << endl;
            cout << "Nombre: " << prod[i].nombre << endl;
            cout << "Precio: $" << prod[i].precio << endl;
            cout << "Stock: " << prod[i].stock << " unidades" << endl;
        }
    }
}
