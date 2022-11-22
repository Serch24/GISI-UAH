#include <iostream>
#include "Cola.h"

using namespace std;
int main(){
        cout << "Creamos la cola vacía" << endl;
        Cola c;
        c.mostrarCola();

        cout << "Encolo 0" << endl;
        c.encolar('0');
        c.mostrarCola();

        cout << "Encolo 1" << endl;
        c.encolar('1');
        c.mostrarCola();

        cout << "Encolo 2" << endl;
        c.encolar('2'); 
        c.mostrarCola();
        cout << " " << endl;
        cout << c.getLongitud() << endl;

        /* cout << "Primero: " << c.inicio() << endl; */
        /* cout << "Ultimo: " << c.fin() << endl; */
        /* cout << "Longitud Cola: " << c.getLongitud() << endl; */
        /* cout << "Desencolo" << endl; */

        /* c.desencolar(); */
        /* c.mostrarCola(); */
        /* cout << "Longitud Cola: " << c.getLongitud() << endl; */
        c.~Cola();

        return 0;
}
