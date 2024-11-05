.text
.global fibo
.type fibo , %function

fibo :
    mov r1, r0 @ prendo il valore dato alla funzione
    mov r0, #0 @ inizializzo  r0

    cmp r1, #0 @ if n == 0
    beq end
    cmp r1, #1 @ if n == 1
    beq end

    mov r2, #0 @ i = 0
    mov r3, #1 @ j = 1


    start:
        add r0, r2, r3 @ res = i + j
        mov r2, r3 @ i = j
        mov r3, r0 @ j = res
        
        sub r1, #1 @ n--
        
        cmp r1, #1 @ n==0
        beq end

        b start@

    end :
        mov pc, lr

