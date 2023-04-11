#include <iostream>
#include "listas.h"
#include "stdlib.h"

// code by serch ;p

using namespace std;
Lista lista;

void insertarInicio(){
        int numero;
        cout << " Ingrese el numero a guardar en la lista" << endl;
        cin >> numero;

        lista.insertarNodoAlInicio(numero);
}

void insertarFinal(){
        int numero;
        cout << " Ingrese el numero a guardar en la lista" << endl;
        cin >> numero;

        lista.insertarNodoAlFinal(numero);
}

void insertarPosicion(){
        int numero;
        int posicion;

        cout << " Ingrese el numero a guardar en la lista" << endl;
        cin >> numero;

        cout << " Ingrese la posicion" << endl;
        cin >> posicion;

        lista.insertarNodoIntermedio(numero, posicion);

}

void eliminarInicio(){
        lista.borrarNodoInicio();
}

void eliminarFin(){
        lista.borrarNodoFin();
}

void eliminarPosicion(){
        int numero;

        cout << " Ingrese la posicion para borrar el valor: " << endl;
        cin >> numero;

        lista.borrarNodoPosicion(numero);
}

void eliminarPorValor(){
        int numero;
        cout << " Ingrese el numero a borrar en la lista" << endl;
        cin >> numero;

        lista.borrarNodo(numero);
}

void menuPrincipal(){
        cout << "1. Dar de alta" << endl;
        cout << "2. Dar de baja" << endl;
        cout << "3. Modificar valor" << endl;
        cout << "4. Mostrar lista" << endl;
        cout << "0. Salir" << endl;
        cout << "Elige una opción ;)" << endl;
        cout << "" << endl;

}

void menuDarAlta(){
        cout << "1. Por inicio" << endl;
        cout << "2. Por final" << endl;
        cout << "3. Por posicion" << endl;
        cout << "Elige una opción ;)" << endl;
        cout << "" << endl;
}

void menuDarBaja(){
        cout << "1. Dar de baja por inicio" << endl;
        cout << "2. Dar de baja por final" << endl;
        cout << "3. Dar de baja por posicion" << endl;
        cout << "4. Dar de baja por valor" << endl;
        cout << "Elige una opción ;)" << endl;
        cout << "" << endl;
}

void bucleAlta(){
        int opcion;
        do{
                menuDarAlta();
                cin >> opcion;
                switch(opcion){
                        case 1:
                                insertarInicio();
                                break;
                        case 2:
                                insertarFinal();
                                break;
                        case 3:
                                insertarPosicion();
                                break;
                        default:
                                cout << "Escribe bien bro" << endl;
                                break;
                }
        }while(opcion != 1 &&  opcion != 2 && opcion != 3);
}

void bucleBaja(){
        int opcion;
        do{
                menuDarBaja();
                cin >> opcion;
                switch(opcion){
                        case 1:
                                eliminarInicio();
                                break;
                        case 2:
                                eliminarFin();
                                break;
                        case 3:
                                //falta terminarlo
                                eliminarPosicion();
                                break;
                        case 4:
                                eliminarPorValor();
                                break;
                        default:
                                cout << "Escribe bien bro" << endl;
                                cout << "" << endl;
                                break;
                }
        }while(opcion != 1 &&  opcion != 2 && opcion != 3 && opcion != 4);
}

void mostrarLaLista(){
        lista.mostrarLista();
}

int main(){
        int opcion;

        do{
                menuPrincipal();
                cin >> opcion;

                switch(opcion){
                        case 1:
                                system("clear");
                                bucleAlta();
                                break;
                        case 2:
                                system("clear");
                                bucleBaja();
                                break;
                        case 3:
                                system("clear");
                                break;
                        case 4:
                                system("clear");
                                mostrarLaLista();
                                break;
                }

        }while(opcion != 0);

        return 0;
}
