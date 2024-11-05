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

/*
int fibo(int n ){
    if(n == 1) return 1;
    if(n == 0) return 0;
    int res=0;
    for(int i = 1, j = 1,c = 0; c < n; c++ ){
        res = i + j;
        i = j;
        j = res;
        c++;
    }
    return res;
}
*/

extern unsigned int fibo(int n);

int main(int argc, char *argv[]){

    printf("%d\n", fibo(5));
    
    return 0;
}