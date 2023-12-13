; Arquivo: palindromo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2019
;
; Verifica se uma palavra salva na memória
; é um palíndromo ou não. Se for verdadeiro, salva 1
; em RAM[0] e 0 caso contrário.
; 
; A palavra possui tamanho fixo de 5 caracteres,
; começando no endereço 10 da RAM e terminando no
; endereço 14 da RAM. A palavra é codificado em
; ASCII.

; exemplo:
;  RAM[10] = a
;  RAM[11] = r
;  RAM[12] = a
;  RAM[13] = r
;  RAM[14] = a
; 

 
; RAM[0] = 0 // Caso não seja verificado que é palindromo, não é palindromo
leaw $R0, %A  ; carrega 0 em A
movw $0, (%A) ; move o valor 0 para A

; RAM[10] == RAM[14] --> True  // Continua sequência
leaw $10, %A    ; carrega 10 em A
movw (%A), %D   ; move o valor da RAM[10] em D
leaw $14, %A    ; carrega 14 em A
subw (%A), %D, %D   ; RAM[14] - D e salva em D

; RAM[10] == RAM[14] --> False
leaw $END, %A   ; carrega o label do fim do arquivo em A
jne %D; pula se D-o resultado da subtração- é diferente de 0
nop

; RAM[11] == RAM[13] --> True // Continua sequência
leaw $11, %A    ; carrega 11 em A
movw (%A), %D   ; move o valor da RAM[11] para D
leaw $13, %A    ; carrega 13 em A
subw (%A), %D, %D   ; RAM[13] - D e salva em D

; RAM[10] == RAM[14] --> False
leaw $END, %A   ; carrega o label do fim do arquivo em A
jne %D  ; pula se D-A 
nop

; se chegou ateh aqui, as duas condicoes sao verdadeiras, entao, seta $1 em RAM[0]
leaw $R0, %A
movw $1, (%A)

END:
