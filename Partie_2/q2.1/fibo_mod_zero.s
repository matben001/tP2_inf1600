.data
.globl adr_pisano_m
adr_pisano_m:
   .int 0,1,1,2,3,5,2,1,3,4,1,5,0,5,5,4,3,1,4,5,3,2,5,1               # 1ere  sequence
   # .int 0,1,1,2,3,0,3,3,1,4,0,4,4,3,2,0,2,2,4,1                     # 2eme  sequence

.text
.globl fibo_mod_zero

fibo_mod_zero:
movl 4(%esp), %esi           #periode de pisano de m (pisano(m))

push %ebp
movl %esp, %ebp
push %ebx      
movl $adr_pisano_m, %edx
movl %esi, %ecx
movl $0, %eax

equal:
  addl $1, %eax
  subl $1, %ecx
L1:
  addl $4, %edx
  cmpl $0, (%edx)
  je equal
  subl $1, %ecx
  cmpl $0, %ecx
  je fin
  jmp L1


fin:
	popl  %ebx
	popl  %ebp 
	ret

