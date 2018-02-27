%include 'io.inc'

section .bss
  a resb 1
  b resb 1
  c resw 1

section .text
global CMAIN
CMAIN:
  GET_DEC 1, AL

  MOV BYTE[a], AL
  MOV BYTE[b], AL


  AND BYTE[a], 0x80
  
  PRINT_DEC 1, [a]
  NEWLINE
  

  SHR BYTE[a], 7
  
  PRINT_DEC 1, [a]
  NEWLINE
  
  IMUL BYTE[a]
  
  MOVSX CX, BYTE[b]

  SUB CX, AX
  SUB CX, AX

  MOV WORD[c], CX
  MOV AX, 0

  PRINT_DEC 2, [c]
  NEWLINE

  MOV EAX, 0
  RET
