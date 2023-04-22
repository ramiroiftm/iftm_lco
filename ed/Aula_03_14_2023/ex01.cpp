

#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

int main()
{
	
	int num, soma=0;
	
	system("cls");
	setlocale(LC_ALL,"portuguese");
	
	for(int i=1 ; i<5; i++)
	{
		system("cls");		
		printf("Digite um número inteiro: ");
		scanf("%d", &num);
		soma += num;
	}
	system("cls");
	printf("\nA média atitmética entre os números é: %1.f",soma/5.0);
	system("pause>>NULL");
}
