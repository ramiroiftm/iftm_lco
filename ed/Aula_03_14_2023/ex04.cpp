//Um programa que leia números inteiros do usuário calcula sua média aritmética e exibe o resultado. 
//A leitura irá parar quando o usuário desejar. 

#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

int main()
{
	
	int num, soma=0;
	char resp;
	
	system("cls");
	setlocale(LC_ALL,"portuguese");
	
	int i=0;
	do
	{	
		system("cls");		
		printf("Digite um número inteiro: ");
		scanf("%d",&num);
		soma += num;		
		i++;
		printf("\nDeseja continuar digitando? (s/n) ");
		fflush(stdin);
		scanf("%c",&resp);	
	}while(resp!='n');
	system("cls");
	printf("\nA média atitmética entre os números é: %.1f",(float)soma/i);  //(float) << foi feito um cast
	system("pause>>NULL");
}
