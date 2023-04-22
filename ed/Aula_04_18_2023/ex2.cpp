//fa�a um programa que receba n�meros inteiros e depois exiba-os ao contr�rio. pergunte o usu�rio se ele deseja ler novo n�mero.
//a leitura ser� finalizafa quando o usu�rio desejar

#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

#define MAX  3

typedef struct Stack
{
	int topo;
	int p[MAX];
}Pilha;

bool cheia(Pilha p1)
{
	if(p1.topo == MAX-1)
		return true;
	return false;
}

bool vazia(Pilha p1)
{
	if(p1.topo == -1)
		return true;
	return false;
}

Pilha empilha(Pilha p1, int num)
{
	p1.topo++;
	p1.p[p1.topo]=num;
	return p1;
}

Pilha desempilha(Pilha p1)
{
	p1.topo--;
	return p1;
}

int main()
{
	int num=0;
	char resp;
	Pilha p1;
	p1.topo = -1;
	
	system("cls"); 
	setlocale(LC_ALL,"portuguese"); 
	do{ 
		printf("\nDigite o n�mero inteiro: ");
		scanf("%d",&num);
		if(cheia(p1))
		{
			printf("\nA mem�ria est� cheia!\n");
			break;	
		}
		p1=empilha(p1,num);
		printf("\nDeseja continuar digitando? (s/n) ");
		fflush(stdin);
		scanf("%c",&resp);
	}while(resp!='n');
	while(!vazia(p1))
	{
		p1=desempilha(p1);
		printf("\n%d",p1.p[p1.topo+1]);
	}	
}
