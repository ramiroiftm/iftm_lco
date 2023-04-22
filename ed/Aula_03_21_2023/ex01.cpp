//Faça um programa que leia um número inteiro e exibe sua paridade. (uso de função que não retorna valor e não tem parâmetros)

#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

int a;
void violacao ()
{
	if(a<0)
		printf("\nNão é possível verificar a paridade de um número negativo");
	else
		if(a%2==0)
			printf("\nO número %d é par.",a);
		else
			printf("\nO número %d é ímpar.",a);					
}

int main ()
{
	system("cls"); //limpa a tela
	setlocale(LC_ALL,"portuguese"); //prepara a acentuação
	printf("\nDigite um número natural: ");
	scanf("%d",&a);
	violacao();
	return 0;
}
