.text
.global contapari
.type contapari , %function


contapari :
    mov r1, r0
    mov r0, #0          
    mov r2, #0 @index = 0
    mov r3, #0 @registro per lo xor

    for :
        add r2, r2, #1 @ i++
        cmp r2, r1 @caso i > n
        bgt end @ termino 
        @parto da 1 e verifico se e' pari
        eor r3, r2, #1 @ metto in r3  r2 XOR 1  
        cmp r3, r2 @ confronto index con xor
        blt for 
        add r0, #1
        b for
end :
    mov pc, lr