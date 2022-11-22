#ifndef NODOPILA_H
#define NODOPILA_H
#include <iostream>

class NodoPila{
        private:
                friend class pila;
        public:
                int valor;
                NodoPila *siguiente;
                NodoPila();
                NodoPila(int v, NodoPila *sig = NULL);
                ~NodoPila();

};

typedef NodoPila *pnodo;

#endif
