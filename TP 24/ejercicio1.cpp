#include <iostream>
#include <string>

using namespace std;

void mover_letras (int movimiento, char letras_vector[10]);
void mostrar_vector (char letras_vector[10]);

int main () {
    char letra;
    int movimiento;
    char letras_vector [10] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j'};

    cout << "Ingrese el numero de casillas demovimiento: ";
    cin >> movimiento;

    mover_letras(movimiento, letras_vector);
    mostrar_vector(letras_vector);
    

    return 0;
}

void mover_letras (int movimiento, char letras_vector[10]) {
    char aux [10];
    const int n = 10;
    
    movimiento = movimiento % 10; 
    cout <<"Se movio: "<< movimiento << endl;

    for (int i=0; i<movimiento; i++) { // guardo las letras que se van a mover en un vector auxiliar
        aux[i] = letras_vector[i];
    }
    for (int i=0; i<n-movimiento; i++) { // desplazamiento de las letras, antes tenia i<movimiento, y solo movia las primeras letras y ahora mueve todas
        letras_vector[i] = letras_vector[i+movimiento];
    }
    for (int i=0; i<movimiento; i++) { // vuelvo a poner las letras guardadas en el vector auxiliar al final del vector original
        letras_vector[i+n-movimiento] = aux[i];
    }
}

void mostrar_vector (char letras_vector[10]) {
    for (int i=0; i<10; i++) {
        cout << letras_vector[i] << " ";
    }
    cout << endl;
}