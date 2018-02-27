%include 'io.inc'

section .bss
  a resb 1
  b resb 1
  c resw 1
  r1 resb 1
  r2 resb 1

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

  MOV BYTE[r1], AL
  MOV BYTE[r2], BL


  MOV BYTE[a], AL
  MOV BYTE[b], AL
  AND BYTE[a], 0x80

  SHR BYTE[a], 7
  
  IMUL BYTE[a]
  
  MOVSX CX, BYTE[b]

  SUB CX, AX
  SUB CX, AX

  MOV WORD[c], CX
  MOV AX, 0
  ;FIRST PART ENDED
  
  MOV AL, BYTE[r2]


  MOV BYTE[a], AL
  MOV BYTE[b], AL
  AND BYTE[a], 0x80

  SHR BYTE[a], 7
  
  IMUL BYTE[a]
  
  MOVSX CX, BYTE[b]

  SUB CX, AX
  SUB CX, AX

  ADD CX, WORD[c]

  PRINT_DEC 2, CX
  NEWLINE

  MOV EAX, 0
  RET
