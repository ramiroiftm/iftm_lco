//Fa�a um programa que leia um n�mero inteiro e exibe a sua paridade. (uso de fun��o que retorna valor e tem par�metros)

#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

int a;

void exibe(int x)
{
	if(x==0)
		printf("\nO n�mero %d � par.",a);
	else
		printf("\nO n�mero %d � �mpar.",a);
}

bool verifica(int y)
{
	if(y%2==0)
		return true;
	return false;
}

void violacao()
{
	int y  = a;
	if(y<0)
		printf("\nN�o � poss�vel verificar a paridade de um n�mero negativo.");
	else
	if(verifica(y)==true)
		exibe(0);
	else
		exibe(1);
	system("pause>>null");
}

int leA()
{
	int b;
	system("cls"); 
	printf("\nDigite um n�mero natural: ");
	scanf("%d",&b);
	return b;
}

int main(){
	
	setlocale(LC_ALL,"portuguese");
	a=leA();
	violacao();
	return 0;

}
