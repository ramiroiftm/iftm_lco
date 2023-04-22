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
	setlocale(LC_ALL,"portuguese"); //prepara a acentuação
	printf("\nDigite um número natural: ");
	scanf("%d",&num);
	dobro(&num);
	printf("\nO dobro é: %d",num);
	system("pause>>null");
	return 0;
	
}
