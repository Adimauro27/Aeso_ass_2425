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

extern int parabola(int a, int b, int c, int x);


int main(int argc, char *argv[]){

    int a = 2;
    int b = 2;
    int c = 2;
    int x = 3;

    printf("Risultato = %d", parabola(a,b,c,x));

    
    return 0;
}