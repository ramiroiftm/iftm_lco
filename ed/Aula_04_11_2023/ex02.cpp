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
		printf("\nElemento: %d",*p);
		p++;
		cont++;
	}
}
