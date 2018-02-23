%include 'io.inc'

section .bss
  a resd 1
  b resd 1

section .text
global CMAIN
CMAIN:
  GET_DEC 4, [a]
  GET_DEC 4, [b]

  MOV EAX, 41
  SUB DWORD[a], 1

  IMUL EAX, DWORD[a]

  SHR DWORD[a], 1
  ADD EAX, DWORD[a]

  ADD EAX, DWORD[b]

  PRINT_DEC 4, EAX
  NEWLINE

  MOV EAX, 0
  RET

