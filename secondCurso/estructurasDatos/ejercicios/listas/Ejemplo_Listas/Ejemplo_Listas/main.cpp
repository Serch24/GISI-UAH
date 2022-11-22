#include "listas.h"
#include <iostream>

using namespace std;

int main() {
    Lista lista;
    lista.insertarNodo(10);
    lista.insertarNodo(20);
    lista.insertarNodo(40);
    lista.insertarNodo(30);
    lista.insertarNodo(70);
    lista.insertarNodo(50);
    lista.mostrarLista();
    lista.insertarNodoIntermedio(15,10);
    lista.insertarNodoIntermedio(25,20);
    lista.insertarNodoIntermedio(45,40);
    lista.mostrarLista();

    cout << "Lista de elementos:" << endl;
    lista.esPrimero();
    while(lista.esActual())
    {
        cout << lista.valorActual() << endl;
        lista.esSiguiente();
    }
    cout << endl;

    lista.esPrimero();
    cout << "Primero: " << lista.valorActual() << endl;

    lista.esFinal();
    cout << "Ultimo: " << lista.valorActual() << endl;

    cout << "Borramos 30" << endl;
    lista.borrarNodo(30);

    lista.mostrarLista();

    cout << "Borramos 70" << endl;
    lista.borrarNodo(70);

    lista.mostrarLista();

    cout << "Borramos 10" << endl;
    lista.borrarNodo(10);

    lista.mostrarLista();

    return 0;
}
