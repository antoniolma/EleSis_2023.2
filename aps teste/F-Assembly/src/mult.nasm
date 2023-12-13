; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Multiplica o valor de RAM[1] com RAM[0] salvando em RAM[3]
leaw $0, %A
movw (%A), %D
leaw $3, %A
movw %D, (%A)
leaw $27, %A
je %D
nop
leaw $0, %A
movw (%A), %D
decw %D
movw %D, (%A)
leaw $1, %A
movw (%A), %D
leaw $3, %A
movw %D, (%A)
leaw $3, %A
movw (%A), %D
leaw $1, %A
addw (%A), %D, %D
leaw $3, %A
movw %D, (%A)
leaw $0, %A
movw (%A), %D
decw %D
movw %D, (%A)
leaw $15, %A
jg %D
nop