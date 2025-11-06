#include <iostream>

using namespace std;

void fibonacci(int n);

int main () {
    int numero;
    cout << "Ingrese un número para generar la secuencia de Fibonacci hasta ese número: ";
    cin >> numero;

    fibonacci(numero);

    return 0;
}

void fibonacci(int n) {
    int a = 0, b = 1, sig;

    if (n == 0) {
        cout << "El termino " << n << " es: " << a << endl;
        return;
    } else if (n == 1) {
        cout << "El termino " << n << " es: " << b << endl;
        return;
    }

    for (int i = 2; i <= n; i++) {
        sig = a + b;
        a = b;
        b = sig;
    }

    cout << "El termino " << n << " es: " << a << endl; // muestro a ya que b muestra el siguiente termino de la secuencia de fibonacci 
}