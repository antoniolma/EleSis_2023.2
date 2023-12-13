; ------------------------------------
; Calcule a média dos valores de um vetor
; que possui inicio em RAM[5] e tamanho
; defindo em RAM[4],
;
; 1. Salve a soma em RAM[1]
; 2. Salve a média em RAM[0]
; 
; ------------------------------------
; antes       | depois
;             |
; RAM[0]:     | RAM[0]:  2  : média 
; RAM[1]:     | RAM[1]:  8  : soma
; RAM[2]:     | RAM[2]:  
; RAM[3]:     | RAM[3]:  
; RAM[4]:  4  | RAM[4]:  4 
; RAM[5]:  1  | RAM[5]:  1 - 
; RAM[6]:  2  | RAM[6]:  2 | vetor
; RAM[7]:  1  | RAM[7]:  1 |
; RAM[8]:  4  | RAM[8]:  4 -
; ------------------------------------


leaw $4, %A
movw %A, %D
addw (%A), %D, %D

leaw $3, %A 
movw %D, (%A)

leaw $4 , $A 
movw (%A), %D 
leaw $1, %A 
subw %A , %D, %D
leaw $END2, %A
je %D
nop

SOMAR:
leaw $3, %A
movw (%A), %D ;%D=8
leaw $9, %A
movw %D, (%A)

leaw $2, %A
movw (%A), %D
leaw $9, %A
addw (%A), %D, %D  ;d=4
leaw $2, %A
movw %D , (%A) ;ram2=4

leaw $3 , %A
movw (%A), %D ;D=8
leaw $1 , %A
subw %A , %D, %D ;D=7
leaw $3, %A
movw %D, (%A)

leaw $SOMAR , %A  
jge %D
nop

leaw $2, %A 
movw (%A), %D 
leaw $1, %A 
movw %D, (%A)


WHILE:
leaw $4, %A
movw (%A), %D

leaw $2, %A
subw (%A), %D, %D
movw %D, (%A)

leaw $0, %A 
addw $1, (%A), %D 
movw %D, (%A)

leaw $2, %A
movw (%A), %D

leaw $WHILE, %A
jge %D
nop
END2:
leaw $5 , %A 
movw (%A), %D 
leaw $0 , %A 
movw %D, (%A)
leaw $2, %A 
movw %D,(%A) 
END:
