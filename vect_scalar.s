.text
.global vect_scalar
.type vect_scalar , %function

@ programma che prende un array una size e uno scalare
@ e fa la moltiplicazione del vettore per quello scalare



vect_scalar :
    @ r0 array
    @ r1 size
    @ r2 scalare 

    mov r3, #0 @ index
    cmp r1,r3
