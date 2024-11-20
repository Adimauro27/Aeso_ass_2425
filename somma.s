.text
.global somma
.type somma , %function


@ prende una stringa e restituisce intero calcolato sommando i valori numerici

@ r0 stringa
somma :
    push {lr}
    mov r1, r0 @ Salva il puntatore alla stringa
    mov r2, #0 @ sommatore
    @ mov r3, #0 @ index

    loop :
        @ mi devo salvare il carattere e lo devo dar a calcola
        ldrb r0, [r1], #1 @ r0 = a[i] 
        cmp r0, #0 @ fine sringa
        beq end
        push {r1,r2,r3}
        bl calcola @ in r0 ci sara il carattere
        pop {r1,r2,r3}
        add r2, r2, r0 @ sommaotre + carattere
        @ add r3, r3, #1
        b loop

end :
    mov r0, r2
    pop {lr}
    mov pc, lr
