#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <time.h>
#include "Datos.h"

char usuario[50];
char clave[50];

void escribirBitacora(char* cadena) {
    FILE *file = fopen("bitacora.txt", "a");

    if (file == NULL) {
        printf("No se pudo abrir el archivo de bitácora.\n");
        return;
    }

    fprintf(file, "%s-%s %s\n", usuario, clave, cadena);

    // Cerrar el archivo
    fclose(file);
}

bool validarUsuarioClave(const char* usuario, const char* clave) {
	FILE *file = fopen("usuarios.txt", "r");
	char linea[100];
	char archivo_usuario[50];
	char archivo_clave[50];

	if (!file) {
		printf("No se pudo abrir el archivo de usuarios.\n");
		return false; // Error al abrir el archivo
	}

	while (fgets(linea, sizeof(linea), file)) {
		linea[strcspn(linea, "\n")] = 0;
		char* archivo_usuario = strtok(linea, "-");
		char* archivo_clave = strtok(NULL, "-");
		if (archivo_usuario && archivo_clave && strcmp(usuario, archivo_usuario) == 0 && strcmp(clave, archivo_clave) == 0) {
		    fclose(file);
		    return true; // Usuario y clave válidos
		}
	}

	fclose(file);
	return false; // No se encontró el usuario o la clave no coincide
}

int main(){
	bool autenticado = false;

	// Pedir credenciales al usuario
	printf("Ingrese el usuario: ");
	scanf("%s", usuario);
	printf("Ingrese la clave: ");
	scanf("%s", clave);

	// Intentar autenticar
	autenticado = validarUsuarioClave(usuario, clave);
	if (!autenticado) {
		char *cadena="Ingreso fallido usuario/clave erroneo";
		escribirBitacora(cadena);
		printf("Usuario o clave incorrectos. Saliendo del programa.\n");
		return 1;
	}
	char *cadena="Ingreso exitoso al sistema";
	escribirBitacora(cadena);
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
				char *cadena="Salida del sistema";
				escribirBitacora(cadena);
				printf("Programa Terminado, gracias.\n");
				break;
			default:
				printf("Opción no válida. Por favor ingrese una opcion\n");
		}
	} while (t != 3);

	return 0;
}



