//Main per provare le funzioni

#define _GNU_SOURCE 
#include <stdio.h>  
#include <stdlib.h> 
#include <time.h>


#define N 10

#define MAX 10

void stampa_array(int *a, int n);
int * crea_arr(int n);
extern int count_zero(int *arr, int n);

int main(int argc, char **argv){
	

	int *a = crea_arr(N);
	stampa_array(a, N);

	clock_t start = clock();
//	------------------------------


	printf("zeri all'interno dell'array:%d\n", count_zero(a, N));



//	------------------------------

	clock_t end = clock();
	double tempo = (double)(end - start)/CLOCKS_PER_SEC ; 
	printf("tempo: %f\n", tempo) ;

	return 0;
}

void stampa_array(int *a, int n){
	for(int i = 0; i< n; i++){
		printf("%4d", a[i]);
	}
	puts("");
}

int * crea_arr(int n){
	int *a = malloc(sizeof(int)*n);
	srand(time(NULL));
	for(int i = 0 ; i < n ; i++){
		a[i] = rand()%MAX;
	}
	return a ;
}