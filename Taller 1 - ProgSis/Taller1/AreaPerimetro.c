#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include "Datos.h"


void calcularTrianguloA(){
    printf("Digite la base:");
    int base;
    scanf("%d", &base);
    printf("Digite la altura:");
    int altura;
    scanf("%d", &altura);
    int numerador = base * altura;
    float area = numerador/2;
    int perimetro = base+base+base;
    printf("El area del triangulo es: %.2f\n", area);
    printf("El perimetro de su triangulo es: %d\n", perimetro);
}

void calcularParalelogramo(){
    printf("Digite la base:");
    int base;
    scanf("%d", &base);
    printf("Digite la altura:");
    int altura;
    scanf("%d", &altura);
    printf("Digite el lado:");
    int lado;
    scanf("%d", &lado);
    int area = base * altura;
    int perimetro = (2*base)+(2*lado);
    printf("El area del Paralelogramo es: %d\n", area);
    printf("El perimetro de su Paralelogramo es: %d\n", perimetro);
}

void calcularCuadrado(){
    printf("Digite el lado:");
    int lado;
    scanf("%d", &lado);
    int area = lado * lado;
    int perimetro = 4*lado;
    printf("El area del Cuadrado es: %d\n", area);
    printf("El perimetro de su Cuadrado es: %d\n", perimetro);
}

void calcularRectangulo(){
    printf("Digite la base:");
    int base;
    scanf("%d", &base);
    printf("Digite el lado:");
    int lado;
    scanf("%d", &lado);
    int area = base*lado;
    int perimetro = (2*base)+(2*lado);
    printf("El area del Rectangulo es: %d\n", area);
    printf("El perimetro de su Rectangulo es: %d\n", perimetro);
}

void calcularombo(){
    printf("Digite el lado:");
    int lado;
    scanf("%d", &lado);
    printf("Digite ancho:");
    int ancho;
    scanf("%d", &lado);
    printf("Digite alto:");
    int alto;
    scanf("%d", &alto);
    int numerador = ancho * alto;
    int area = numerador/2;
    int perimetro = 4*lado;
    printf("El area del rombo es: %d\n", area);
    printf("El perimetro de su rombo es: %d\n", perimetro);
}

void calcularTrapecio(){
    printf("Digite el lado lateral:");
    int lado;
    scanf("%d", &lado);
    printf("Digite base mayor:");
    int bmayor;
    scanf("%d", &bmayor);
    printf("Digite base menor:");
    int bmenor;
    scanf("%d", &bmenor);
    printf("Digite altura:");
    int altura;
    scanf("%d", &altura);
    int numerador = altura*bmayor*bmenor;
    int area = numerador/2;
    int perimetro = bmayor+bmenor+lado+lado;
    printf("El area del Trapecio es: %d\n", area);
    printf("El perimetro de su Trapecio es: %d\n", perimetro);
}

void calcularCirculo(){
    printf("Digite el radio:");
    int radio;
    scanf("%d", &radio);
    printf("Digite diametro:");
    int diametro;
    scanf("%d", &diametro);
    float area = 3.14*radio*radio;
    float perimetro = 3.14 * diametro;
    printf("El area del Circulo es: %.2f\n", area);
    printf("El perimetro de su Circulo es: %.2f\n", perimetro);
}

void calcularPR(){
    printf("Digite lado:");
    int lado;
    scanf("%d", &lado);
    printf("Digite distancia al centro:");
    int centro;
    scanf("%d", &centro);
    int perimetro = lado*6;
    int numerador = perimetro*centro;
    float area = numerador/2;
    printf("El area del PR es: %.2f\n", area);
    printf("El perimetro de su PR es: %d\n", perimetro);
} 