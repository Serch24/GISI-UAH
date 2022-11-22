#include "Cola.h"
#include "NodoCola.h"

using namespace std;

Cola::Cola(){
        primero = NULL;
        ultimo = NULL;
        longitud = 0;
}

void Cola::encolar(char elemento){
        NodoCola * nuevoNodo = new NodoCola(elemento);
        if(esVacia()){
                primero = nuevoNodo;
                ultimo = nuevoNodo;
        }else{
                ultimo->siguiente = nuevoNodo;
                ultimo = nuevoNodo;
        
        }
        longitud++;

}

char Cola::desencolar(){
        if(!esVacia()){
                char elemento = primero->elemento;
                NodoCola *aux = primero;
                if((primero == ultimo) && (primero->siguiente == NULL)){
                        primero = NULL;
                        ultimo = NULL;
                        aux->siguiente = NULL;
                        delete(aux);

                }else{
                        primero = primero->siguiente;
                        aux->siguiente = NULL;
                        delete(aux);
                }
                longitud--;
                return elemento;
        }
        return -1;
}


char Cola::inicio(){
        if(!esVacia()){
                return primero->elemento;
        }
        return -1;
}

char Cola::fin(){
        if(!esVacia()){
                return ultimo->elemento;
        }
        return -1;
}

int Cola::getLongitud(){
        return longitud;
}

bool Cola::esVacia(){
        return ((primero == NULL) && (ultimo == NULL));
}

void Cola::mostrarCola(){
        NodoCola *aux = primero;
        if(esVacia()){
                cout << "Cola vacia!!" << endl;
        }else{
                cout << "Datos de la cola!!" << endl;
                while(aux){
                        cout << aux->elemento << endl;
                        aux = aux->siguiente;
                }
        }
}

