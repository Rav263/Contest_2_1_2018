%include 'io.inc'

section .bss
  a resd 1
  b resd 1
  c resd 1
  d resd 1


section .text
global CMAIN
CMAIN:
  GET_HEX 4, [a]
  GET_HEX 4, [b]
  GET_HEX 4, [c]

  MOV EAX, DWORD[a]
  MOV EBX, DWORD[b]
  MOV ECX, DWORD[c]
  MOV EDX, DWORD[c]

  NOT EDX
  AND EAX, ECX
  AND EBX, EDX

  OR EAX, EBX

  PRINT_HEX 4, EAX
  NEWLINE

  MOV EAX, 0
  RET
