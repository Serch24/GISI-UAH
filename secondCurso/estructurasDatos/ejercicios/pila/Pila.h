#ifndef PILA_H
#define PILA_H
#include "NodoPila.h"
#include <pthread.h>

class Pila{
        private:
                pnodo cima;
        public:
                Pila();
                ~Pila();
                bool esVacia();
                void apilar(int v);
                void desapilar();
                int mostrar();
                int contar();
};

#endif
