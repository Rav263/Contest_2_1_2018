%include 'io.inc'

section .bss
  x resb 1
  y resb 1

section .text
global CMAIN
CMAIN:
  GET_CHAR [x]
  GET_CHAR [y]

  SUB BYTE[x], 'H'
  SUB BYTE[y], '8'

  MOVSX EAX, BYTE[x]
  MOVSX EBX, BYTE[y]

  IMUL EAX, EBX

  SHR EAX, 1

  PRINT_DEC 4, EAX
  NEWLINE


  MOV EAX, 0

  RET


