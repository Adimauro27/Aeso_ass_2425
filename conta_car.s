.text
.global conta_car
.type conta_car , %function

@scrivere una funzione ARMv7 che prende come primo parametro il puntatore iniziale ad una stringa e come secondo parametro un carattere. La funzione ritorna il numero di occorrenze del carattere nella stringa.

@ r0 stringa
@ r1 il carattere da cercare
@ r2 per index

conta_car :
    mov r2, #0 @inizializzo index
    mov r3, #0 @ occorrenze
    loop :
    ldrb r12, [r0, r2] @ carico il carattere
    cmp r12, #0 @ controllo se ho finito
    beq end
    cmp r12, r1 @ confronto se uguale a quello cercato
    add r2, #1
    beq conta @ se trovo un occorrenza la conto
    b loop
    
conta :
    add r3, #1
    b loop

end :   
    mov r0, r3
    mov pc, lr


