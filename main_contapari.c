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

extern int contapari(int n);


int main(int argc, char *argv[]){

    int n = atoi(argv[1]);

    printf("numeri di numeri pari da 1 a %d : %d",n , contapari(n));
    
    return 0;
}