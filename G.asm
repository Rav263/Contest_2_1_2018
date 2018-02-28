%include 'io.inc'

section .bss
  a11 resd 1
  a12 resd 1
  a21 resd 1
  a22 resd 1
  b1 resd 1
  b2 resd 1
  x resd 4
  y resd 4


section .text
global CMAIN
CMAIN:
  GET_DEC 4, a11
  GET_DEC 4, a12
  GET_DEC 4, a21
  GET_DEC 4, a22
  GET_DEC 4, b1
  GET_DEC 4, b2

  MOV EAX, DWORD[a21]
  AND EAX, DWORD[b1]
  MOV EBX, DWORD[a11]
  ADD EBX, DWORD[b2]
  XOR EAX, EBX
  MOV DWORD[y], EAX

  ;PRINT_DEC 4, [y]
  ;NEWLINE

  MOV EBX, DWORD[b1]
  MOV EAX, DWORD[a12]
  AND EAX, DWORD[y]
  XOR EAX, EBX
  MOV DWORD[x], EAX

  ;PRINT_DEC 4, [x]
  ;NEWLINE

  MOV EBX, DWORD[b2]
  MOV EAX, DWORD[a22]
  AND EAX, DWORD[y]
  XOR EAX, EBX
  MOV DWORD[x + 4], EAX

  ;PRINT_DEC 4, [x + 4]
  ;NEWLINE

  MOV EAX, DWORD[a22]
  AND EAX, DWORD[b1]
  MOV EBX, DWORD[a12]
  ADD EBX, DWORD[b2]
  XOR EAX, EBX
  MOV DWORD[x + 8], EAX

  ;PRINT_DEC 4, [x + 8]
  ;NEWLINE

  MOV EBX, DWORD[b2]
  MOV EAX, DWORD[a21]
  AND EAX, DWORD[x + 8]
  XOR EAX, EBX
  MOV DWORD[y + 4], EAX

  ;PRINT_DEC 4, [y + 4]
  ;NEWLINE

  MOV EBX, DWORD[b1]
  MOV EAX, DWORD[a11]
  AND EAX, DWORD[x + 8]
  XOR EAX, EBX
  MOV DWORD[y + 8], EAX

  ;PRINT_DEC 4, [y + 8]
  ;NEWLINE

  
  MOV EAX, DWORD[x]
  MOV EBX, DWORD[y]


  OR EAX, DWORD[x + 4]
  OR EBX, DWORD[y + 4]
  
  OR EAX, DWORD[x + 8]
  OR EBX, DWORD[y + 8]

  PRINT_DEC 4, EAX
  NEWLINE
  PRINT_DEC 4, EBX
  NEWLINE

  MOV EAX, 0
  RET
