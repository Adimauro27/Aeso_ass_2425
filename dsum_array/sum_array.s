.text
.global sum_array
.type sum_array , %function

@funzione che legge un array e stampa la somam degli elementi

sum_array :
    @r0 e r1 sono array e n

    @controllo se n == 0
    cmp r1, #0
    beq end

    @inizializzo la mia index
    mov r2, #0 @index
    mov r3, #0 @registro per mettere il valore della cella
    mov r4, #0 @registro per il risultato

    @faccio il ciclo for per scorrere l'array 
    for :
        cmp r2, r1
        beq end 
        lsl r2, r2, #2 @moltiplico per quattro l'indice
        ldr r3, [r0, r2] @metto in r3 il valore dell'array alla cella i
        lsr r2, r2, #2 @divido per quattro l'indice

        @devo fare la somma di r3 con r4 risultato
        add r4, r4, r3
        add r2, r2, #1 @ i++
        b for
    

end :
    mov r0, r4
    mov pc, lr