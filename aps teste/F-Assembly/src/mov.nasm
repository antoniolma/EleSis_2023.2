; Elementos de Sistemas : 2018a
; Rafael Corsi
; Hardware : Z0.1
;
; Data :
;    - Dez 2018
; Descrição :
;    - Movimentação de dados da memoria RAM
;
; RAM[0] = RAM[1]
; RAM[1] = RAM[0]
; RAM[3] = 1

;Carregando constantes


;RAM[0] = RAM[1]
leaw $0, %A
movw (%A), %D

leaw $2, %A
movw %D, (%A) ;no 2 tem o 0

leaw $1, %A
movw (%A), %D ;no D tem o 1

leaw $0, %A
movw %D, (%A) ; 1 já está no 0

leaw $2, %A
movw (%A), %D ;o zero está no D

leaw $1, %A
movw %D, (%A) ;o zero está no 1



;RAM[3] = 1
leaw $3, %A
movw $1, (%A)



