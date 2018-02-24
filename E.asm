%include 'io.inc'


section .bss
  a resb 13
  b resb 4


section .text
global CMAIN
CMAIN:
  MOV BYTE[a], '2'
  MOV BYTE[a + 1], '3'
  MOV BYTE[a + 2], '4'
  MOV BYTE[a + 3], '5'
  MOV BYTE[a + 4], '6'
  MOV BYTE[a + 5], '7'
  MOV BYTE[a + 6], '8'
  MOV BYTE[a + 7], '9'
  MOV BYTE[a + 8], 'T'
  MOV BYTE[a + 9], 'J'
  MOV BYTE[a + 10], 'Q'
  MOV BYTE[a + 11], 'K'
  MOV BYTE[a + 12], 'A'

  MOV BYTE[b], 'S'
  MOV BYTE[b + 1], 'C'
  MOV BYTE[b + 2], 'D'
  MOV BYTE[b + 3], 'H'

  GET_DEC 4, EAX
  
  SUB EAX, 1
  
  MOV EDX, 0
  MOV ECX, 13
  DIV ECX
  
  MOV EBX, b
  MOV ECX, a

  ADD EBX, EAX
  ADD ECX, EDX

  PRINT_CHAR [ECX]
  PRINT_CHAR [EBX]
  NEWLINE

  MOV EAX, 0
  RET

