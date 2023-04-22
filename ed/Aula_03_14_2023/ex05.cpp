//Faça um programa que lês um vetor de números inteiros e exibe o maior elemento entre eles.
//Para casa, fazer com matriz.

#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>


int main()
{
	int n=0, vet[50], maior;
	
	system("cls");
	setlocale(LC_ALL,"portuguese");
	
	printf("Digite o tamanho do vetor ");
	scanf("%d",&n);
	
	for(int i=0;i<n;i++)
	{
		system("cls");
		printf("\nDigite o %dº elemento do vetor: ",i+1);
		scanf("%d",&vet[i]);
	}
	printf("\nOs elementos do vetor são: ");
	for(int i=0;i<n;i++)
		printf("%d  ",vet[i]);

	maior = vet[0];
	for(int i=1;i<n;i++)
		if(maior<vet[i])
			maior = vet[i];
	system("cls");
	printf("\nO maior elemento do vetor é: %d ",maior);
	system("pause>>NULL");
	return 0;
}
