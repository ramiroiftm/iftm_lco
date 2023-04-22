//Fa�a um programa que resolva as equa��es de segundo grau
//Crie as funl��es le(), delta(), raizes() e exibe()
//Use passagem por refer�ncia quando for necess�rio

#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>
#include <math.h>

void le(float *x, float *y, float *z)
{
	do{
		printf("\nDigite o quoeficiente A da equa��o: ");
		scanf("%f",x);
	}while((*x)==0);
	printf("\nDigite o quoeficiente B da equa��o: ");
	scanf("%f",y);	
	printf("\nDigite o quoeficiente C da equa��o: ");
	scanf("%f",z);
}

float delta(float a, float b, float c)
{
	return b*b-4*a*c;
}

void exibe(float x1, float x2)
{
//	system("cls"); 
	printf("\nAs ra�zes da equa��o s�o: \nx1=%.2f \nx2=%.2f",x1,x2);
}

void raizes(float d, float a, float b, float *x1, float *x2) 
{
	(*x1)=(-b+sqrt(d))/(2*a);
	(*x2)=(-b-sqrt(d))/(2*a);
}

/*
float raizes(float d, float a, float b) 
{
	float x1, x2;
	x1=(-b+sqrt(d))/(2*a);
	x2=(-b-sqrt(d))/(2*a);
	exibe(x1,x2);
}
*/

int main()
{
	float a,b,c,d,x1,x2;
	system("cls"); //limpa a tela
	setlocale(LC_ALL,"portuguese"); //prepara a acentua��o
	le(&a,&b,&c);
	d=delta(a,b,c);
	if (d<0)
		printf("\nN�o existe ra�zes de n�meros negativos.");
	else
	{
		raizes(d,a,b,&x1,&x2);
		exibe(x1,x2);
	}
	system("pause>>null");
	return 0;
}
