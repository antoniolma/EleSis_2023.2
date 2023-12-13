; Arquivo: Factorial.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Calcula o fatorial do número em R0 e armazena o valor em R1.
leaw $0, %A 
movw (%A), %D 
leaw $CASO, %A
je %D
nop
leaw $0, %A 
movw (%A), %D 
leaw $2, %A 
movw %D, (%A) 

leaw $4, %A 
movw %D, (%A) 

REDUZIR:
leaw $2, %A 
movw (%A), %D 
leaw $1, %A 
subw %D, %A, %D 

leaw $2, %A 
movw %D, (%A) 

leaw $3, %A 
movw %D, (%A)

leaw $4, %A 
movw (%A), %D 
leaw $5, %A 
movw %D, (%A) 

leaw $3, %A 
movw (%A), %D 
leaw $1, %A 
subw %D, %A, %D 
leaw $END, %A
jl %D
nop

MUlTIPLICAR:
leaw $4, %A 
movw (%A), %D
leaw $5, %A 
addw (%A), %D, %D
leaw $4, %A 
movw %D, (%A)

leaw $3, %A 
movw (%A), %D 
leaw $1, %A 
subw %D, %A, %D 
 
leaw $3, %A 
movw %D, (%A)
leaw $1, %A
subw %D, %A, %D
leaw $REDUZIR, %A 
je %D 
nop
leaw $MUlTIPLICAR, %A 
jg %D 
nop

END:
leaw $5, %A 
movw (%A), %D
leaw $1, %A 
movw %D, (%A)

leaw $0, %A 
movw (%A), %D
leaw $END2, %A
jne %D
nop

CASO:
leaw $1, %A 
movw %A, %D
leaw $1, %A 
movw %D, (%A)

END2:


