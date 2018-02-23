%include 'io.inc'


section .bss
  a resd 1


section .text
global CMAIN
CMAIN:
  GET_DEC 4, EAX
  
  SUB EAX, 1
  
  MOV EDX, 0
  MOV ECX, 13
  DIV ECX

  PRINT_DEC 4, EAX
  NEWLINE
  PRINT_DEC 4, EDX
  NEWLINE

  MOV EAX, 0
  RET

