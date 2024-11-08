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

extern  int max(int *array, int n);

int main(int argc, char *argv[]){

    int n = atoi(argv[1]);

    int *arr = malloc(n*sizeof(int));

    for(int i = 0 ; i < n; i++){
        arr[i] = rand() % 100;
        printf("%d ",arr[i]);
    }

    int massimo = max(arr, n);

    printf("\n  massimo : %d \n", massimo);

    free(arr);
    
    return 0;
}