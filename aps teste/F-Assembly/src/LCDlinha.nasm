; Arquivo: LCDQuadrado.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Desenhe uma linha no LCD


; ####################################################################
; Rafael Corsi @ 2018
; 
; Escreve a letra R na tela
; ####################################################################

; carrega x"FF" em S (todos pxs em '1')
  leaw $0, %A
  movw %A, %D
  notw %D

  ; linha 1
  leaw $1000, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  
  