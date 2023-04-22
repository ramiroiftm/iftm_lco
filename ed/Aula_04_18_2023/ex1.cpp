#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

typedef struct Stack
{
	int topo;
	int p[max];
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

Pilha empilha(Pilha p1, tipo item)
{
	p1.topo++;
	p1.p[p1.topo]=item;
	return p1;
}

Pilha desempilha(Pilha p1)
{
	p1.topo--;
	return p1;
}

int main()
{
	Pilha p1;
	p1.topo = -1;
}
