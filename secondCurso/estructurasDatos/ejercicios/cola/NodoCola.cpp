#include "NodoCola.h"

//Constructor por defecto.
NodoCola::NodoCola(){
        elemento = '0';
        siguiente = NULL;
}

NodoCola::NodoCola(char e, NodoCola*sig){
        elemento = e;
        siguiente = sig;
}

NodoCola::~NodoCola(){

}
