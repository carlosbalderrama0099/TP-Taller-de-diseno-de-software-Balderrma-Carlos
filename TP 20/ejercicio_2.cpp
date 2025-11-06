#include <iostream>
using namespace std;

struct notas
{
    float nota;
}nt[5];


int main() {
    string nombre;
    float promedio = 0;
    cout<<"Ingrese su nombre: "<<endl;
    cin>>nombre;

   for(int i=0; i<5; i++){
       cout<<"Ingrese la nota "<<i+1<<": ";
       cin>>nt[i].nota;
       promedio += nt[i].nota;
   }
   promedio /= 5;

   cout<<"El promedio de las notas de "<<nombre<<" es: "<<promedio<<endl;

    return 0;
}   