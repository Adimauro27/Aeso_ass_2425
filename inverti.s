.text
.global inverti
.type inverti , %function


@Scrivere una funzione ARMv7 che, dato un array di interi e la sua dimensione, inverta l'ordine degli elementi nell'array (senza creare un nuovo array).

@ r0 array
@ r1 size

inverti :
    push {r4, r5}
    mov r2, #0 @ indice min
    mov r3, r1 @ indice max
    sub r3, #1
    mov r4, #0 @ tmp min
    mov r5, #0 @ tmp max

    loop : 
    cmp r2,r3
    bge end

    @ load min
    ldr r4, [r0, r2, lsl #2]
    @ load max
    ldr r5, [r0, r3, lsl #2]

    @ adesso procedo allo scambio
    str r4, [r0, r3, lsl #2] @ min in max
    str r5, [r0, r2, lsl #2] @ max in min

    @decrementiamo max e aumentiamo min
    add r2, #1
    sub r3, #1

    b loop


end :  
    pop {r4, r5}
    mov pc, lr




    
