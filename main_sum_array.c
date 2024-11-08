#define _GNU_SOURCE   // avverte che usiamo le estensioni GNU 
#include <stdio.h>    // permette di usare scanf printf etc ...
#include <stdlib.h>   // conversioni stringa/numero exit() etc ...
#include <stdbool.h>  // gestisce tipo bool (variabili booleane)
#include <assert.h>   // permette di usare la funzione assert
#include <string.h>   // confronto/copia/etc di stringhe
#include <errno.h>
#include <time.h>


void termina(char *messaggio)
{
  perror(messaggio);
  exit(1);
}

extern unsigned int sum_array( int *array, int n);

int main(int argc, char *argv[]){
    double tempo;

    clock_t start=clock();
    long int n = atoi(argv[1]);;
    int * array = malloc(n*(sizeof(int)));

    for(int i = 0; i<n ; i ++){
        array[i] = rand();
        //printf("%d  ",array[i]);
    }
    puts("");
    int res = sum_array(array, n);
    printf("res : %d \n", res);

    free(array);
    clock_t end=clock();
    tempo=((double)(end-start))/CLOCKS_PER_SEC;
    printf("tempo di esecuzione : %f \n", tempo );
    return 0;
}