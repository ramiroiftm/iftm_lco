//Fa�a um programa que leia um n�mero inteiro e exibe sua paridade. (uso de fun��o que n�o retorna valor e n�o tem par�metros)

#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

int a;
void violacao ()
{
	if(a<0)
		printf("\nN�o � poss�vel verificar a paridade de um n�mero negativo");
	else
		if(a%2==0)
			printf("\nO n�mero %d � par.",a);
		else
			printf("\nO n�mero %d � �mpar.",a);					
}

int main ()
{
	system("cls"); //limpa a tela
	setlocale(LC_ALL,"portuguese"); //prepara a acentua��o
	printf("\nDigite um n�mero natural: ");
	scanf("%d",&a);
	violacao();
	return 0;
}
