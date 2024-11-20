.text
.global calcola
.type calcola , %function

@ prende un carattere e restituisce il suo valore numerico in caso sia un numero 0 altrimenti


@ r0 carattere

calcola :
    mov r1, r0 

    cmp r1, #47 
    blt zero
    cmp r1, #57
    bgt zero
    sub r1, #48
    mov r0, r1
    b end

zero :
    mov r0, #0
    mov pc,lr

end :
    mov pc,lr
