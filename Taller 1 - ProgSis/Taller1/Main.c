#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include "Datos.h"


int main(){

    int t;
    do {
        printf("Escoja una opción del menú:\n");
        printf("1. Calcular geometria de Dos dimensiones\n");
        printf("2. Calcular geometria de Tres dimensiones\n");
        printf("3. Terminar programa\n");
        char entrada[10];
        scanf("%d", &t);

        switch(t) {
            case 1:
                printf("Has elegido la opción 1.\n");
                calcular2D();
                break;
            case 2:
                printf("Has elegido la opción 2.\n");
                calcular3D();
                break;
            case 3:
                printf("Programa Terminado, gracias.\n");
                break;
            default:
                printf("Opción no válida. Por favor ingrese una opcion\n");
            }
    } while (t != 3);
    return 0;
}



