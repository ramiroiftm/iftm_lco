#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

struct Boletim
{
	char nome[30];
	float nota1, nota2, notaFinal;
	int falta;
};

int main()
{
	struct Boletim estudante;
	system("cls"); 
	setlocale(LC_ALL,"portuguese"); 
	for(int i=0;i<10;i++)
	{
		system("cls"); 
		fflush(stdin);
		printf("\n\nDigite o nome do aluno (a): ");
		scanf("%s",&estudante.nome);
		printf("\nDigite a primeira nota: ");
		scanf("%f",&estudante.nota1);	
		printf("\nDigite a segunda nota: ");
		scanf("%f",&estudante.nota2);
		estudante.notaFinal=estudante.nota1+estudante.nota2;
		printf("\nDigite a quantidade de faltas: ");
		scanf("%d",&estudante.falta);	
		printf("\nEstudante: %s ",estudante.nome);
		printf("\nNota final: %.2f ",estudante.notaFinal);
		printf("\nQuantidade de faltas: %d ",estudante.falta);
	}
}
