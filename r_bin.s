.text
.global r_bin
.type r_bin , %function

r_bin :
  @r3 primo elemento dell'array
  @r1 ultimo elmento dell'array
  @ mi serve un ulteriore registro per l'indice
  push {r4}
  
  @ verifica preliminare per controllare se si trova nel range di valori
  mov r3, #0
  lsl r1, #2
  @verifio se x e' minore del primo elemento
  ldr r12, [r0, #0]
  cmp r2, r12
  blt end
  sub r1, r1, #4
  ldr r12, [r0, r1]
  cmp r2, r12
  bgt end
  @ da qui in poi ho la sicurezza che si trova nel range
    loop :
    cmp r3, r1 @vedo se sono la stessa parte
    bgt end
    add r4, r3, r1 @ q = p+r
    lsr r4, #2
    lsr r4, #1 @ q = (p+r)/2 
    lsl r4, #2
    ldr r12, [r0, r4]
    cmp r12, r2
    beq eq @ ho trovato il valore quindi ci sono
    bgt sx
    blt dx
    b end

sx :
  sub r1, r4, #4
  b loop
dx :
  add r3, r4, #4
  b loop
eq :
  lsr r4, #2
  mov r0, r4
  pop {r4}
  mov pc, lr

end :
  pop {r4}
  mov r0, #-1
  mov pc, lr
