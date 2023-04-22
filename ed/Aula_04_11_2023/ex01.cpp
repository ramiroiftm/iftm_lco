//leia uma frase e exiba ao contrário

#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

int main()
{
	int tam=0, i=0, num;
	char *f, *aux, resp;
	
	setlocale(LC_ALL,"portuguese");
	aux = f = (char*) malloc(sizeof(char));
	do{
		tam++;
		system("cls");
		printf("Digite um caractere ou '.' para finalizar):  ");
		fflush(stdin);
		scanf("%c",&resp);
		if (resp=='.')
			*aux='\0';
		else
		{
			*aux = resp;
			aux++;
		}
	}while(resp!='.');
	system("cls");
	do{
		printf("%c",*aux);
		aux--; tam--;
	}while(tam!=0);
}
