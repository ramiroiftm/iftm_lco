//Faça um programa em C que leia do usuário o nome e a idade e exibe o texto: "Bom dia, nome! 
//                                                                             Você você é menor/maior de idade.
//                                                                             Agora são 07:30."
//Bom dia! >> 07 / 11
//Boa tarde! >> 12 / 17
//Boa noite! >> 18 / 06


#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

int main ()
{
	int idade, hora, minuto;
	char nome[50];
	
	system("cls");
	setlocale(LC_ALL,"portuguese");
	printf("Digite seu nome: ");
	gets(nome);
	printf("\nDigite sua idade: ");
	scanf("%d",&idade);	
	printf("\nDigite a hora atual: ");
	scanf("%d",&hora);	
	printf("\nDigite o minuto atual: ");
	scanf("%d",&minuto);	
	if((hora>=7) && (hora<12))
		printf("\nBom dia, %s!",nome);
	else
		if((hora>=12) && (hora<18))
			printf("\nBoa tarde, %s!",nome);
		else
			printf("\nBoa noite, %s!",nome);
	if(idade<18)
		printf("\nVocê é menor de idade.\nAgora são %d : %d.\n\n",hora,minuto);
	else
		printf("\nVocê é maior de idade.\nAgora são %d : %d.\n\n",hora,minuto);
	system("pause>>NULL");	
	return 0;
}
