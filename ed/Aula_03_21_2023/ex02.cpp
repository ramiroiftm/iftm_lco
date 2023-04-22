//Faça um programa que leia um número inteiro e exibe a sua paridade. (uso de função que não retorna valor e tem parâmetro)

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

int main(){
		
	system("cls"); 
	setlocale(LC_ALL,"portuguese"); -
	printf("\nDigite um número natural: ");
	scanf("%d",&a);
	violacao();
	return 0;

}
