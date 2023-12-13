; Arquivo: stringLength.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi 
; Data: 28/03/2018
;
; Assuma que uma string é um conjunto de caracteres terminado
; em NULL (0).
; 
; Supondo que temos uma string que começa no endereço 8 da RAM.
; Calcule o seu tamanho e salve o resultado na RAM[0].
;
; Os caracteres estão formatados em ASCII
; http://sticksandstones.kstrom.com/appen.html
; 
; Exemplo:
;
;   Convertido para ASCII
;             |
;             v
;  RAM[8]  = `o`
;  RAM[9]  = `i`
;  RAM[10] = ` `
;  RAM[11] = `b`
;  RAM[12] =  l`
;  RAM[13] = `z`
;  RAM[14] = `?`
;  RAM[15] = NULL = 0x0000

; inicia o contador zerado
leaw $R0, %A     ; carrega R0 em A
movw $0, (%A)   ; move 0 para o RAM[0]

; primeiro LOOP começando em 8
leaw $8, %A     ; carrega 8 em A
movw %A, %D   ; move o valor 8 para D
leaw $R1, %A    ; carrega R1 em A
movw %D, (%A)   ; move o valor da D para R1

; R0 --> contador
; R1 --> indice da RAM analisada

LOOP:

leaw $R1, %A    ; carrega R1 em A
movw (%A), %D   ; move o valor da RAM[i] para D
movw %D, %A     ; move o valor de A para D
movw (%A), %D   ; move o valor da RAM[%A] para D

; Verifica se a aquele caractere é diferente de 0 para continuar o LOOP
leaw $END, %A   ; carrega o fim do codigo em A
je %D           ; pula para o fim do codigo se D==0
nop

; incrementa 1 no contador
leaw $R0, %A    ; carrega R0 em A
movw (%A), %D   ; move RAM[R0] em D
incw %D         ; incrementa 1 em D
movw %D, (%A)   ; move D para RAM[R0]

; incrementa 1 no indice da RAM
leaw $R1, %A    ; carrega R1 em %A
movw (%A), %D   ; move RAM[R1] para D
incw %D         ; incrementa 1 em D
movw %D, (%A)   ; move %D para RAM[R1] 

; reinicia o loop
leaw $LOOP, %A  ; carrega LOOP em A
jmp             ; pula para o LOOP
nop

END:
leaw $R0, %A    ; carrega R0 em A
