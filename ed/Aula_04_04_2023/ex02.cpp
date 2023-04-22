//Faça um programa em C que exibe o seguinte menu: MENU 1-Cadastrar; 2-Exibir; 3-Sair;
//A opção 1 é acionada quando o usuário deseja cadastrar o boletim de algum aluno da turma.
//A opção 2 é acionada quando o usuário deseja exibir um relatório dos boletins da tuma.
//O cadastro é feito chamando a função cadastrar e exibindo chamando a função exibir();
//Deve-se criar uma estrutura chamada Boletim conforme mostrada em aula, sendo que deve-se criar um vetor chamado turma de tamanho 30. 
//Para facilitar, crie o vetor como sendo uma variável grobal

#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

typedef struct Boletim
{
	char nome[30];
	float nota1, nota2, notaFinal;
	int falta;
}Bol;

Bol turma[30];

void cadastrar(int i)
{
	system("cls"); 
	fflush(stdin);
	printf("\n\nDigite o nome do aluno (a): ");
	gets(turma[i].nome);
	printf("\nDigite a primeira nota: ");
	scanf("%f",&turma[i].nota1);	
	printf("\nDigite a segunda nota: ");
	scanf("%f",&turma[i].nota2);
	turma[i].notaFinal=turma[i].nota1+turma[i].nota2;
	printf("\nDigite a quantidade de faltas: ");
	scanf("%d",&turma[i].falta);
}

void exibir(int i)
{
	system("cls"); 
	printf("\nBOLETIM\n\n");
	for(int j=0;j<i;j++)
	{
		printf("\nEstudante: %s ",turma[j].nome);
		printf("\nNota 1: %.2f ",turma[j].nota1);
		printf("\nNota 2: %.2f ",turma[j].nota2);
		printf("\nNota final: %.2f ",turma[j].notaFinal);
		printf("\nQuantidade de faltas: %d \n\n",turma[j].falta);	
	}
}

int main()
{
	int op=0, i=0;
	system("cls"); 
	setlocale(LC_ALL,"portuguese"); 
	do{
		//system("cls"); 
		printf("\nMENU\n\n1-Cadastrar\n2-Exibir\n3-Sair\n\nDigite a opção: ");
		scanf("%d",&op);
		switch (op)
		{
			case 1:
				cadastrar(i);
				i++;
				break;
			case 2:
				exibir(i);
				//system("cls");
				break;
			default:
				printf("\n\nFim do programa.\n\n");
			//system("cls");
		}
	//system("cls");
	}while(op!=3);
}
