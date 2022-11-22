#include <iostream>
#include <stdlib.h>
#include <ctime>


using namespace std;

int calcularSecuenciaAleatoria(void)
{
    int numaleat;

    numaleat=rand()%9999;

    return numaleat;
}

int main()
{
    int i,j = 0;
    int MAX = 5;
    int num=0;

    srand(time(NULL));

    for (i=1;i<4;i++)
    {
        cout << "Secuencia aleatoria (en el main): " << "  " << i <<  endl;
          for (j=1;j<MAX;j++)
        {
            num=rand()%5;
            cout << num;
        }
        cout << endl;

        cout << "Secuencia aleatoria (como funcion): " << i <<  endl;
        cout << calcularSecuenciaAleatoria();
        cout << endl << endl;
    }

}
