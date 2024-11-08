.text
.global max
.type max , %function


max :
    @r0 e r1 sono array e n

    @controllo se n == 0
    cmp r1, #0
    beq end

    @mi serve un registro per index una per il max(primo elemento dell'array)
    mov r2, #0 @index
    ldr r3, [r0,#0] @il max e' il primo elemento dell'array all'inizio
    mov r4, #0 @registro di appoggio
    add r2, #1

    for :
        add r2, #1
        cmp r2, r1
        beq end
        lsl r2, r2, #2
        ldr r4, [r0,r2]
        lsr r2, r2, #2

        @devo controllare il maggiore tra max(r3) e il numero corrente r4

        cmp r3, r4
        bgt for
        mov r3, r4
        add r2, #1
        b for

end :
    mov r0, r3
    mov pc, lr