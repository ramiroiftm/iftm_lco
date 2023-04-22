//Faça um programa que leia um número inteiro e exibe a sua paridade. (uso de função que retorna valor e não tem parâmetros)

#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

int a;

void exibe(int x)
{
	if(x==0)
		printf("\nO número %d é par.",a);
	else
		printf("\nO número %d é ímpar.",a);
}

void violacao()
{
	if(a<0)
		printf("\nNão é possível verificar a paridade de um número negativo.");
	else
		if(a%2==0)
			exibe(0);
		else
			exibe(1);
	system("pause>>null");
}

int leA()
{
	int b;
	system("cls"); 
	printf("\nDigite um número natural: ");
	scanf("%d",&b);
	return b;
}

int main(){
	
	setlocale(LC_ALL,"portuguese");
	a=leA();
	violacao();
	return 0;

}
