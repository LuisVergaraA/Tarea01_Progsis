#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include "Datos.h"


void calcularCubo(){
    printf("Digite el lado:");
    int lado;
    scanf("%d", &lado);
    int superficie = 6 * lado * lado;
    int volumen = lado * lado * lado;
    printf("El area de superficie del cubo es: %d\n", superficie);
    printf("El volumen del cubo es: %d\n", volumen);
}

void calcularCuboide(){
    printf("Digite anchura:");
    int anchura;
    scanf("%d", &anchura);
    printf("Digite profundidad:");
    int profundidad;
    scanf("%d", &profundidad);
    printf("Digite altura:");
    int altura;
    scanf("%d", &altura);
    int superficie = 2 * (anchura * profundidad)+(anchura * altura)+(altura * profundidad);
    int volumen = anchura * profundidad * altura;
    printf("El area de superficie del cuboide es: %d\n", superficie);
    printf("El volumen del cuboide es: %d\n", volumen);
}

void calcularCilindroRecto(){
    printf("Digite el radio:");
    int radio;
    scanf("%d", &radio);
    printf("Digite el altura:");
    int altura;
    scanf("%d", &altura);
    float superficie = 2 * 3.14 * radio* (altura + radio);
    float volumen = 3.14 * radio* radio * altura;
    printf("El area de superficie del cilindro es: %.2f\n", superficie);
    printf("El volumen del cilindro es: %.2f\n", volumen);
}

void calcularEsfera(){
    printf("Digite el radio:");
    int radio;
    scanf("%d", &radio);
    float superficie = 4 * 3.14 * radio * radio;
    float volumen = (4 / 3) * 3.14 * radio * radio * radio;
    printf("El area de superficie de la esfera es: %.2f\n", superficie);
    printf("El volumen de la esfera es: %.2f\n", volumen);
}

void calcularConoCircularRecto(){
    printf("Digite el lado:");
    int lado;
    scanf("%d", &lado);
    printf("Digite el altura:");
    int altura;
    scanf("%d", &altura);
    printf("Digite el radio:");
    int radio;
    scanf("%d", &radio);
    float superficie = 3.14 * radio * (lado+radio);
    float numerador = 3.14 * radio * radio * altura;
    float volumen = numerador/3;
    printf("El area de superficie del Cono es: %.2f\n", superficie);
    printf("El volumen del Cono es: %.2f\n", volumen);
}