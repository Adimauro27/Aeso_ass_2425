#define _GNU_SOURCE   // avverte che usiamo le estensioni GNU 
#include <stdio.h>    // permette di usare scanf printf etc ...
#include <stdlib.h>   // conversioni stringa/numero exit() etc ...
#include <stdbool.h>  // gestisce tipo bool (variabili booleane)
#include <assert.h>   // permette di usare la funzione assert
#include <string.h>   // confronto/copia/etc di stringhe
#include <errno.h>
#include <time.h>

#define N 15
#define MAX 20


void termina(char *messaggio)
{
  perror(messaggio);
  exit(1);
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


int compare(const void *a, const void *b) {
    // Cast dei puntatori void in puntatori a interi
    int int_a = *(int *)a;
    int int_b = *(int *)b;

    // Restituisce il risultato della sottrazione tra i due numeri
    return (int_a - int_b);
}

extern int r_bin(int array[], int size, int x);


int main(int argc, char *argv[]){
    int *a = crea_arr(N);
    clock_t start = clock();
//	------------------------------
    qsort(a, N , sizeof(int), compare ) ;
    stampa_array(a, N);
    printf("%d\n",  r_bin(a, N, 17));


//	------------------------------

	clock_t end = clock();
	double tempo = (double)(end - start)/CLOCKS_PER_SEC ; 
	printf("tempo: %f\n", tempo) ;
    
    return 0;
}

