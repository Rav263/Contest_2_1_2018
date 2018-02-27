%include 'io.inc'

section .bss
  a11 resd 1
  a12 resd 1
  a21 resd 1
  a22 resd 1
  b1 resd 1
  b2 resd 1
  x resd 2
  y resd 2


section .text
global CMAIN
CMAIN:
  GET_DEC 4, a11
  GET_DEC 4, a12
  GET_DEC 4, a21
  GET_DEC 4, a22
  GET_DEC 4, b1
  GET_DEC 4, b2

  MOV EAX, DWORD[a11]
  AND EAX, DWORD[b1]
  MOV DWORD[x], EAX

  PRINT_DEC 4, [x]
  NEWLINE

  MOV EAX, DWORD[b1]
  NOT DWORD[a11]
  AND EAX, DWORD[a11]
  AND EAX, DWORD[a12]
  MOV DWORD[y], EAX

  PRINT_DEC 4, [y]
  NEWLINE
  
  MOV EAX, DWORD[a21]
  AND EAX, DWORD[b2]
  MOV DWORD[x + 4], EAX
  
  PRINT_DEC 4, [x + 4]
  NEWLINE
  
  MOV EAX, DWORD[b2]
  NOT DWORD[a21]
  AND EAX, DWORD[a21]
  AND EAX, DWORD[a22]
  MOV DWORD[y + 4], EAX
  
  PRINT_DEC 4, [y + 4]
  NEWLINE

  MOV EAX, DWORD[x]
  MOV EBX, DWORD[y]


  OR EAX, DWORD[x + 4]
  OR EBX, DWORD[y + 4]

  PRINT_DEC 4, EAX
  NEWLINE
  PRINT_DEC 4, EBX
  NEWLINE

  MOV EAX, 0
  RET
