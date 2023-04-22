//Faça um programa em c++ que lê uma matriz de números inteiros e exibe o maior elemento entre eles.

#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

int main()
{
	
	int m, n;
	
	setlocale(LC_ALL,"portuguese");		//prepara a acentuação
	system("cls");		//limpa a tela
	printf("\nQuantas linhas tem a matriz? ");
	scanf("%d",&m);
	system("cls");
	printf("\nQuantas colunas tem a matriz? ");
	scanf("%d",&n);
	//leitura dos elementos da matriz
	int mat[m][n];
	for(int i=0;i<m;i++)		//percorre linhas
		for(int j=0;j<n;j++)	//percorre colunas
		{
			system("cls");
			printf("\nDigite o elemento [ %d ] [ %d ] da matriz: ",i, j);
			scanf("%d",&mat[i][j]);
		}
	int maior = mat[0][0];
	for (int i=0;i<m;i++)
       	for (int j=0;j<n;j++)
           	if (maior<mat[i][j])
               	maior = mat[i][j];
    system("cls");
    printf("\nO maior elemento da matriz é %d",maior);
	system("pause>>NULL");
	return 0;
}
    
