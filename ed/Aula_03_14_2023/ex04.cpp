//Um programa que leia n�meros inteiros do usu�rio calcula sua m�dia aritm�tica e exibe o resultado. 
//A leitura ir� parar quando o usu�rio desejar. 

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
		printf("Digite um n�mero inteiro: ");
		scanf("%d",&num);
		soma += num;		
		i++;
		printf("\nDeseja continuar digitando? (s/n) ");
		fflush(stdin);
		scanf("%c",&resp);	
	}while(resp!='n');
	system("cls");
	printf("\nA m�dia atitm�tica entre os n�meros �: %.1f",(float)soma/i);  //(float) << foi feito um cast
	system("pause>>NULL");
}
