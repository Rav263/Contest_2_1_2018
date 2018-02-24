%include 'io.inc'

section .bss
  a resb 1
  b resb 1

section .text
global CMAIN
CMAIN:
  GET_CHAR AL
  GET_CHAR BL
  
  GET_CHAR [a]

  GET_CHAR CL
  GET_CHAR DL

  SUB AL, 'A'
  SUB BL, '1'

  SUB CL, 'A'
  SUB DL, '1'

  SUB AL, CL
  SUB BL, DL


  PRINT_DEC 1, AL
  PRINT_DEC 1, BL
  NEWLINE


  MOV BYTE[a], AL
  MOV BYTE[b], AL
  AND BYTE[a], 0x80

  SHR BYTE[a], 7

  MUL BYTE[a]
  MOVZX CX, BYTE[b]

  SUB AX, CX
  SUB AX, CX

  PRINT_DEC 2, AX
  NEWLINE

  MOV EAX, 0
  RET
