//Fa�a um programa que leia um n�mero inteiro e exibe a sua paridade. (uso de fun��o que retorna valor e n�o tem par�metros)

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

void violacao()
{
	if(a<0)
		printf("\nN�o � poss�vel verificar a paridade de um n�mero negativo.");
	else
		if(a%2==0)
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
