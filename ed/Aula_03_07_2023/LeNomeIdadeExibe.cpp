//Fa�a um programa em C que leia do usu�rio o nome e a idade e exibe o texto: "Bom dia, nome. 
//                                                                             Voc� nasceu no ano de xxxx."

#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

int main ()
{
	int idade;
	char nome[50];
	
	system("cls");
	setlocale(LC_ALL,"portuguese");
	printf("Digite seu nome: ");
	gets(nome);
	printf("\nDigite sua idade: ");
	scanf("%d",&idade);	
	printf("\n\nBom dia, %s!\nVoc� nasceu no ano de %d.\n\n",nome,2022-idade);
	system("pause>>NULL");	
	return 0;
}
