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
  
  
    int n = atoi(argv[1]); 
    
  
    int ** mat = malloc(n*sizeof(int*));
    int * tmp = malloc(n*sizeof(int));
  
    for(int i = 0; i < n; i++){
      mat[i] = malloc(n*sizeof(int));
      for(int j = 0; j < n; j++){
        mat[i][j] = rand()%10;
      }
    }

    for(int i = 0; i < n; i++){
      tmp[i] = sum_array(mat[i], n);
    }
  
    int res = sum_array(tmp,n);

    printf("res : %d\n", res);
  
    free(tmp);
    for(int i = 0; i<n;i++){free(mat[i]);}
    free(mat);

    clock_t end=clock();
    tempo=((double)(end-start))/CLOCKS_PER_SEC;
    printf("tempo di esecuzione : %f \n", tempo );
    return 0;
}
