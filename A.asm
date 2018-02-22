%include 'io.inc'

section .bss
  v resd 2
  a resd 2
  t resd 1
  
section .text
global CMAIN
CMAIN:
  GET_DEC 4, [v]
  GET_DEC 4, [v + 4]
  GET_DEC 4, [a]
  GET_DEC 4, [a + 4]
  GET_DEC 4, [t]

  MOV EAX, DWORD [v]
  IMUL EAX, DWORD [t]
  
  MOV EBX, DWORD [a]
  IMUL EBX, DWORD [t]
  IMUL EBX, DWORD [t]

  ADD EAX, EBX
  PRINT_DEC 4, EAX
  NEWLINE

  MOV EAX, DWORD [v + 4]
  IMUL EAX, DWORD [t]

  MOV EBX, DWORD[a + 4]
  IMUL EBX, DWORD[t]
  IMUL EBX, DWORD[t]
  
  ADD EAX, EBX
  PRINT_DEC 4, EAX
  NEWLINE

  MOV EAX, 0
  RET
