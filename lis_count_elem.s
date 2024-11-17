.text
.global lis_count_elem
.type lis_count_elem , %function

@prende lista e restituisce numero di elementi della lista

@ r0 ho la lista

lis_count_elem :
    mov r2, #0
    loop :
    cmp r0, #0 @ lis == NULL
    beq end
    mov r1, r0 @ mi salvo la posizione di r0
    ldr r0, [r1, #4] @ lis = lis.next
    add r2, #1
    b loop

end :
mov r0, r2
mov pc, lr

    
     





