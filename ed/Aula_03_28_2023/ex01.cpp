#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

int dobro(int *x)
{
	(*x) = (*x)+(*x);
}

int main()
{
	int num;
	system("cls"); //limpa a tela
	setlocale(LC_ALL,"portuguese"); //prepara a acentua��o
	printf("\nDigite um n�mero natural: ");
	scanf("%d",&num);
	dobro(&num);
	printf("\nO dobro �: %d",num);
	system("pause>>null");
	return 0;
	
}
