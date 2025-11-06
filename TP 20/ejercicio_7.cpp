#include <iostream>>
#include <limits>
using namespace std;

struct ventas_categorias
{
    string categoria;
    float cantidad;
}vts[100];

int main () {
    int total_categorias;
    float total_ventas;
    float porcentaje;

    cout<<"Digite la cantidad de ventas:  "<<endl;
    cin>>total_ventas;
    while(cin.fail() || total_ventas <= 0) {
        cin.clear();
        cin.ignore(numeric_limits<streamsize>::max(),'\n');
        cout<<"Dato incorrecto. Digite la cantidad de ventas nuevamente: "<<endl;
        cin>>total_ventas;
    }

    cout<<"Digite la cantidad de categorias:  "<<endl;
    cin>>total_categorias;
    while(cin.fail() || total_categorias <= 0) {
        cin.clear();
        cin.ignore(numeric_limits<streamsize>::max(),'\n');
        cout<<"Dato incorrecto. Digite la cantidad de categorias nuevamente: "<<endl;
        cin>>total_categorias;
    }

    for (int i = 0; i < total_categorias; i++) {
        cin.ignore(numeric_limits<streamsize>::max(),'\n');
        cout<<"Digite la categoria "<<i+1<<": "<<endl;
        cin>>vts[i].categoria;
        cin.ignore(numeric_limits<streamsize>::max(),'\n');
        cout<<"Digite la cantidad de ventas para la categoria "<<vts[i].categoria<<": "<<endl;
        cin>>vts[i].cantidad;
    }

    for (int i = 0; i < total_categorias; i++)
    {
        porcentaje = (vts[i].cantidad / total_ventas) * 100;
        cout<<"Categoria: "<<vts[i].categoria<<", Ventas: "<<vts[i].cantidad<<", Porcentaje: "<<porcentaje<<"%"<<endl;
    }
    

    return 0;
