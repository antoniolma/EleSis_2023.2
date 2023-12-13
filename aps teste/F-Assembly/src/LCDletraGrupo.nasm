; Arquivo: LCDletraGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD a letra do grupo de vocês
;  - Valide no hardawre
;  - Bata uma foto!

; carrega x"FF" em S (todos pxs em '1')
  leaw $0, %A
  movw %A, %D
  notw %D

  ; linha 1
  leaw $18810, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $18830, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $18850, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $18870, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)

    ; linha 1
  leaw $18890, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $18910, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $18930, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $18950, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)


  ; linha 1
  leaw $18970, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)


  ; linha 1
  leaw $18990, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)
  
  ; linha 1
  leaw $19010, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)
  
  ; linha 1
  leaw $19030, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)
  
  ; linha 1
  leaw $19050, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)
  
  ; linha 1
  leaw $19070, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19090, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19110, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19130, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19150, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19170, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19190, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19210, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19230, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19250, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19270, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19290, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19310, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19330, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19350, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19370, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19390, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19410, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19430, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)

    ; linha 1
  leaw $19450, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19470, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19490, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19510, %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19530, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)
  
  ; linha 1
  leaw $19550, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)
  
  ; linha 1
  leaw $19570, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)
  
  ; linha 1
  leaw $19590, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19610, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19630, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19650, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19670, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19690, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19710, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19730, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19750, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19770, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19790, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19810, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19830, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19850, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19870, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

  ; linha 1
  leaw $19890, %A
  movw %D, (%A)
  incw %A
  incw %A
  incw %A
  movw %D, (%A)

