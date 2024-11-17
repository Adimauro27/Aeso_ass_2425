.text
.global parabola
.type parabola , %function


@ mencagli pippa

@ parabola(a, b, c, x) = ax^2 + bx + c

@ a = r0
@ b = r1
@ c = r2
@ x = r3

@ tmp = r12

parabola : 
    mov r12, #0
    mul r12, r3, r3
    mul r12, r0, r12 @adesso in r12 ho ax^2

    mov r0, r1
    mul r0, r0, r3 @ in r0 = bx

    add r0, r0, r12 @ r0 = bx + ax^2
    add r0, r0, r1 @ r0 = 

    mov pc, lr 


    

