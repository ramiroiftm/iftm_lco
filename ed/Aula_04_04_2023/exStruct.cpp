#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

struct Cadastro
{
	char nome[60], cpf[11], sexo, rua[10], bairro[10], cidade[10];	
};

int main()
{
	struct Cadastro v[10];
	system("cls"); //limpa a tela
	setlocale(LC_ALL,"portuguese"); //prepara a acentuação
	printf("\nDigite o nome do nn estudante: ");
	scanf("%s",&cadastro.nome);
}
