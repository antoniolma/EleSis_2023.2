leaw $5, %A
movw  (%A), %D
leaw $1, %A
andw %A, %D, %D
subw %A, %D, %D
leaw $PAR, %A
jg %D
nop
leaw $IMPAR, %A
jle %D
nop
IMPAR:
leaw $0, %A
movw %A, (%A)
leaw $END, %A
jmp
nop
PAR:
leaw $1, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)
leaw $END, %A
jmp
nop
END:













































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































