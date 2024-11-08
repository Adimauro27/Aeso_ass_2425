.text
.global maius
.type maius , %function


maius :
    ldrb r1, [r0] 
    @verifico che sia NULL
    cmp r1, #0 @ a[i] == '\0'
    beq end 

    @verifico che sia un carattere giusto
    @ e che si trovi tra 97 e 123
    cmp r1, #97
    blo inc
    cmp r1, #122
    bhi inc

    @se ha passato le condizioni allora e' una lettera minuscola
    sub r1, #32

    strb r1, [r0], #1

    b maius

end :
    mov r0, #0 @ convenzione 
    mov pc, lr 

inc :
    add r0, r0, #1
    b maius

