.text
.global principale
.type principale , %function


@ prende il primo puntatore alla lista e restituisce un intero calcolato come la somma dei valori dei valori numerici

@ r0 ho la testa della lista

principale :
    push {lr}
    mov r2, #0 @ sommatore
    loop :
    mov r1, r0 @ mi salvo la posisizone di r0
    cmp r0, #0 @ lis == null
    beq end
    @ adesso vado a chiamare la funzione somma
    push {r1,r2}
    ldr r0, [r1]
    bl somma @adesso teoricamente in r0 ho il mio valore somma
    pop {r1,r2}
    add r2,r2,r0
    ldr r0, [r1, #4] @ lis = lis.next
    b loop

end :
    mov r0, r2
    pop {lr}
    mov pc, lr


    
