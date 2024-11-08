


.data
    @dobbiamo allocare localmente un array adi 10 interi a = [0,1,...,9]
    array : .word 0,1,2,3,4,5,6,7,8,9
    @devo fare una printf e quindi devo allocar una stringa
    msg : .string "il risultato e' %d \n"

@ .text classico per dirgli che dopo il.text c'e' del codice
.text
.global main
.type main , %function

main :
    push{lr}
    @faccio una load literal
    ldr r0, = array
    mov r1, #10     @ size
    mov r3, #0      @ res    
    mov r2, #0      @ index
    cmp r3, r1      @ i == size
    beq end
    ldr r12, [r0, r3 lsl #2]
    add r2, r2, r12
    add r3, r3, #1  @ i++
    b for
end :
    mov r0, =msg
    mov r1, r2 
    bl printf
    mov r0, #0
    pop{pc}