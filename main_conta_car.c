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

extern int conta_car(char *stringa, char carattere);


int main(int argc, char *argv[]){

    char *pippo = "pippo la cocaina";
    char car = 'p';

    puts(pippo);

    int res = conta_car(pippo, car);

    printf(" numero di occorrenze di %c : %d \n", car, res);

    
    return 0;
}