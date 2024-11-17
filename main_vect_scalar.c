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

extern void vect_scalar( int * array , int size , int scalare);


int main(int argc, char *argv[]){

    int size = atoi(argv[1]);

    int * a = malloc(size * sizeof(int));

    for(int i = 0 ; i < size ; i++){
        a[i] = rand() % 10 ;
        printf("%d ", a[i]);
    }
    puts("");

    int scalare = atoi(argv[2]);

    vect_scalar(a, size, scalare);

    for(int i = 0; i < size; i++){
        printf("%d ", a[i]);
    }

    puts("");
    
    return 0;
}