#include <iostream>
#include "Pila.h"
using namespace std;

int main(){

        cout << "Creamos la pila Vacía" << endl;
        Pila p;
        p.mostrar();

        cout << "Apilo 0" << endl;
        p.apilar(0);
        p.mostrar();

        cout << "Apilo 1" << endl;
        p.apilar(1);
        p.mostrar();

        cout << "Apilo 2" << endl;
        p.apilar(2);
        p.mostrar();

        /* cout << "Desapilo" << endl; */
        /* p.desapilar(); */
        /* p.mostrar(); */
       

        cout << "Cantidad de datos" << endl;
        cout << p.contar() << endl;

        return 0;
}
