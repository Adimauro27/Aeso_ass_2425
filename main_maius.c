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

extern void maius(char*stringa);

int main(int argc, char *argv[]){

    printf("Stringa originale %s \n", argv[1]);

    maius(argv[1]);

    printf("Stringa convertita %s \n", argv[1]);
    
    return 0;
}