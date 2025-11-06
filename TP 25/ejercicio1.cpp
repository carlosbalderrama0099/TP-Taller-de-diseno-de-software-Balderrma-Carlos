#include <iostream>
#include <string>

using namespace std;

struct libro {
    string titulo;
    string autor;
    int anio_publicacion;
    int paginas;
}lib1, lib2, lib3;

void ingresar_datos(libro &lib);
void mostrar_datos(const libro &lib);

int main() {
    libro libs[3];
    
    for (int i = 0; i < 3; i++) {
        cout << "\n--- Libro " << i + 1 << " ---" << endl;
        ingresar_datos(libs[i]);
    }

    cout << "\n=== Libros publicados desde 2010 ===" << endl;
    for (int i = 0; i < 3; i++) {
        mostrar_datos(libs[i]);
    }

    return 0;
}

void ingresar_datos(libro &lib) {
        cout << "Ingrese el titulo del libro: ";
        getline(cin, lib.titulo);
        cout << "Ingrese el autor del libro: ";
        getline(cin, lib.autor);
        cout << "Ingrese el anio de publicacion: ";
        cin >> lib.anio_publicacion;
        cout << "Ingrese la cantidad de paginas: ";
        cin >> lib.paginas;
        cin.ignore(); // Limpiar el buffer de entrada
}
void mostrar_datos(const libro &lib) {
    if (lib.anio_publicacion >= 2010) {
        cout << "\nDatos del libro:" << endl;
        cout << "Titulo: " << lib.titulo << endl;
        cout << "Autor: " << lib.autor << endl;
        cout << "Anio de publicacion: " << lib.anio_publicacion << endl;
        cout << "Cantidad de paginas: " << lib.paginas << endl;
    }
}
