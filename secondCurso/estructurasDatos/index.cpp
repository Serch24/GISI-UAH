#include <iostream>
#include <iomanip>
#include <cmath>
#include <math.h>
#include <string>

using namespace std;

void punto2(){
        cout << "Grados";
        cout << setw(15) << "Grados" <<endl;
        cout << "Celcius";
        cout << setw(15) << "Fahrenheit" << endl;
        cout << "---------";
        cout << setw(15) << "-------------" << endl;

       //5 y 5.0 son muy diferentes jaja 
        for(int i=5; i <= 50; i+=5){
                int fahrenheit = ((i * (9.0/5.0)) + 32);
                cout << i;
                cout << setw(15) << fahrenheit << endl;
        }
}

void punto3(){
        int a,b,c; 
        double parteRaiz, parteNegativa, partePositiva;
        cout << "Bienvenido, por favor escriba los coeficientes" << endl;
        cout << "A B C" << endl;
        cin >> a >> b >> c;
        parteRaiz = sqrt(pow(b, 2) - (4 * a * c)); 
        if(isnan(parteRaiz)){
                cout << "Las raices son imaginarias" << endl;
        }else{
                cout << "la raiz es = "<< parteRaiz << endl;
                parteNegativa = (-b - parteRaiz) / (2*a);
                partePositiva = (-b + parteRaiz) / (2*a);
                cout << "Parte negativa:" << parteNegativa << endl;
                cout << "Parte positiva:" << partePositiva << endl;
        }
}

void punto4(){
        int nume = 34;
        int tamano = floor(log10(abs(nume))) + 1;
        string numeroReve;
        for (int i = 0; i < tamano; i++){
                numeroReve += nume / 10;
                nume = nume / 10;
        }
        cout << numeroReve << endl;
}

int main(){

        punto2();
        /* punto3(); */
        /* punto4(); */
        return 0;
}

