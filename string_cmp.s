.text
.global string_cmp
.type string_cmp , %function
.extern malloc


@Scrivere una funzione ARMv7 che, dati due array di interi ordinati (i cui puntatori e dimensioni sono forniti come parametri), combini i due array in un terzo array ordinato. La funzione deve restituire un puntatore al nuovo array.

@ r0 array 1
@ r1 size 2
@ r2 array 2
@ r3 size 2
@ r4 array 3
@ r5 size 3
@ r6 i
@ r7 j

string_cmp : 
    push {r4,r5,r6,r7,r8} @ adesso posso usare r4, r5, r6 r12

    @prima cosa devo verificare diversi casi base

    @ verifico se gli array sono tutti e due pieni
    cmp r1, #0 @ size1 == 0
    beq base1
    cmp r3, #0
    beq end @ se array1 e' pieno e array2 e' null allora ritorno array1

    @ adesso sono nel caso in cui tutti e due gli array sono di dimensione positiva

    @ ho bisogno di calcolare la dimensione del mio array e devo decidere chi va prima di quelli dati
    add r5, r1, r3 @ size3 = size1 + size2

    push {r0} @ salvo l'indirizzo di array1
    mov r0, r4 @ sposto la size3 nel parametro di ingresso della malloc
    bl malloc @ in r0 la dimensione del mio array finale
    mov r4, r0 @ metto in r4 il puntatore al mio nuovo array
    pop {r0} @ ripristino il mio vecchio puntatore a array1

    merge :
        ldr r6, [r0, r6, lsl #2 ] @ prendo a[i]
        ldr r12, [r2, r7 lsl #2 ] @ prendo a[j]






@ se array 2 vuoto ritorno null, se pieno lo restituisco
base1 :
    cmp r3, #0 @ size2 == 0
    beq end  @ se null allora finisco
    mov r0, r2 @ altrimenti ritorno array2
    b return2

return2 : 
    mov r2, r0
    b end

end :
    pop {r4,r5,r6}
    mov pc, lr
    
