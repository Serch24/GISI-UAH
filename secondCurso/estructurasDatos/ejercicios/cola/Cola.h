#ifndef COLA_H
#define COLA_H
#include "NodoCola.h"

class Cola{
        private:
                NodoCola * primero;
                NodoCola * ultimo;
                int longitud;

        public:
                Cola();
                ~Cola();
                void encolar(char);
                char inicio();
                char fin();
                char desencolar();
                bool esVacia();
                void mostrarCola();
                int getLongitud();
};
#endif
