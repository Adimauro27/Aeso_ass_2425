.text
.global longest
.type longest , %function

@scrivere una funzione ARMv7 che prende come primo parametro un array di stringhe, e come secondo parametro quante stringhe ci sono nell'array. La funzione ritorna l'indice della stringa più lunga nel vettore fornito.


@ r0 array di stringhe
@ r1 quante stringhe ci sono (size)

longest :
    push {r4, r5, lr}
    mov r4, #0 @ lunghezza parola
    mov r2, #0 @ index del loop esterno
    mov r3, #0 @ index della stringa di lunghezza massima
    mov r5, #0 @ lunghezza massima incontrata
    @ questo sara' il mio loop esterno
    loop :
        cmp r2, r1 @ index == size
        beq end
        push {r0} @ salvo idnice iniziale e attuale
        ldr r0, [r0, r2, lsl #2] @ carico la parola in r12 poiche' parola a 4 byte e poi shift
        mov r4, #0 @inizializzo il mio index per il loop
        bl lenght
        cmp r5, r4 @ confronto lunghezza della parola con il massimo
        movlt r5, r4 @ aggiorno il massimo globale
        movlt r3, r2 @ se massimo < parola scambio
        pop {r0} @ ripistino index esterno
        add r2, #1 @ i++
        b loop
lenght :
    
    ldrb r12, [r0, r4] @ carico il primo carattere
    cmp r12, #0 @ char == null
    moveq pc, lr @ se finito torno a loop (lenght)
    add r4, #1 @ in r2 avro lunghezza della parola
    b lenght
end :
    pop {r4, r5, lr}
    mov r0, r3
    mov pc, lr
