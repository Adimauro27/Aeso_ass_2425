.text
.global diagonale
.type diagonale , %function

@Scrivere una funzione ARMv7 che prende come parametri un puntatore a una matrice quadrata NxN di interi e la dimensione N della matrice. La funzione deve calcolare e restituire la somma degli elementi della diagonale principale.

@ in r0 la matrice
@ in r1 la grandezza della matrice

diagonale :
    push {r4} @ mi salvo il valore di r0
    mov r2, #0 @ counter
    mov r4, r0
    mov r3, #0 @ sommatore
    cmp r0, #0
    beq end

    loop :
    cmp r2, r1
    beq end
    @prima cosa da verificare che il mio array non e' vuoto
    ldr r0, [r4, r2, lsl #2]
    ldr r12, [r0, r2, lsl #2]
    add r3, r3, r12
    add r2, #1
    b loop

end :
    pop {r4}
    mov r0, r3
    mov pc, lr





     
    