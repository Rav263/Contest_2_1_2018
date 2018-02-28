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
  l1 resd 1
  l2 resd 1


section .text
global CMAIN
CMAIN:
  GET_UDEC 4, [a11]
  GET_UDEC 4, [a12]
  GET_UDEC 4, [a21]
  GET_UDEC 4, [a22]
  GET_UDEC 4, [b1]
  GET_UDEC 4, [b2]

  MOV EAX, DWORD[a12]
  MOV EBX, DWORD[a22]
  
  AND EAX, 0
  AND EBX, 0
  
  XOR EAX, DWORD[b1]
  XOR EBX, DWORD[b2]
  
  AND EAX, DWORD[a11]
  AND EBX, DWORD[a21]

  OR  EAX, EBX

  MOV DWORD[x], EAX


  MOV EAX, DWORD[a11]
  MOV EBX, DWORD[a12]

  AND EAX, DWORD[x]
  AND EBX, DWORD[y]

  XOR EAX, EBX
  MOV DWORD[l1], EAX


  MOV EAX, DWORD[a21]
  MOV EBX, DWORD[a22]

  AND EAX, DWORD[x]
  AND EBX, DWORD[y]

  XOR EAX, EBX
  MOV DWORD[l2], EAX

  
  MOV EAX, DWORD[l1]
  MOV EBX, DWORD[l2]

  XOR EAX, DWORD[b1]
  XOR EBX, DWORD[b2]

  OR EAX, EBX

  MOV DWORD[y], EAX


  MOV EAX, DWORD[a12]
  MOV EBX, DWORD[a22]
  
  AND EAX, DWORD[y]
  AND EBX, DWORD[y]
  
  XOR EAX, DWORD[b1]
  XOR EBX, DWORD[b2]
  
  AND EAX, DWORD[a11]
  AND EBX, DWORD[a21]

  OR EAX, EBX

  MOV DWORD[x], EAX

  PRINT_UDEC 4, [x]
  NEWLINE
  PRINT_UDEC 4, [y]
  NEWLINE

  MOV EAX, 0
  RET
