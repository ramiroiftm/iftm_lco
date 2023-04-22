#include <conio.h>
#include <stdlib.h>
#include <stdio.h>
#include <locale.h>

int main(){
	int mat[2][2] = {{1,2},{3,4}};
	int *p, cont=0;
	
	p = &mat[0][0];
	while(cont<4)
	{
		printf("\nElemento: %d", *p);
		if ((cont+1) % 2 == 0) // Verifica se é o segundo elemento de cada coluna
			p = &mat[0][cont/2 + 1]; // Move para o próximo elemento na coluna abaixo
		else
			p += 2; // Move para o próximo elemento na mesma coluna
		cont++;
	}
}

