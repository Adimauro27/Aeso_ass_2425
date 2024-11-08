.text
.global count_zero
.type count_zero , %function

@prendiamo in 
@ r0 l'array
@ r1 la grandezza dell'array

count_zero :
    mov r2, #0 @ numero di occorrenze
    mov r3, #0 @ inizializzo r3 per index

    for :
    cmp r3, r1 @ i == n
    beq end
    add r3, r3, #1 @ i++

    ldr r12, [r0], #4

    cmp r12, #0
    addeq r2, r2, #1
    b for 

end :
    mov r0, r2
    mov pc, lr



