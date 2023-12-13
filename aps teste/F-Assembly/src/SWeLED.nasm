; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça os LEDs exibirem 
; LED = ON ON ON ON ON !SW3 !SW2 !SW1 0
; Mesma questão da prova

; LED: 1 1 1 1 1 !SW3 !SW2 !SW1 0

leaw $21185, %A
movw (%A), %D   ;define dentro de D as chaves(SW)

leaw $14, %A ; carrega o SW3, SW2 e SW1 (em binário pra decimal fica 14)
andw %A, %D, %D ;and com A e D, guardando em D

notw %D

decw %D ;retira 1 do D (porque precisava do 0 no final)

leaw $65024, %A ; Para resetar os 7 primeiros bits ao valor inicial
subw %D, %A, %D

leaw $21184, %A
movw %D, (%A)   ; coloca os valores dentro do LED para acender