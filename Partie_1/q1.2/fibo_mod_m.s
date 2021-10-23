.text
.globl fibo_mod_m

fibo_mod_m:
movl 4(%esp), %edi           # n : indice de fibo
movl 8(%esp), %esi           # m : base modulo

push %ebp
movl %esp, %ebp
push %ebx 
movl $adr_fibo_mod_m,%edx
movl %edi ,%ecx
L1:
   movl (%edx), %eax
   addl 4(%edx),%eax
   movl %eax, 8(%edx)
   addl $4, %edx
   loop L1
movl %edi ,%ecx
movl $adr_fibo_mod_m, %ebx
movl $0, %eax
L2:
   movl %eax, (%ebx)
   movl (%ebx), %eax
   addl $4, %ebx
   cmpl $0, %ecx
   jz fin 
   subl $1, %ecx
   jmp L3
   
L3: 
    subl %esi, %eax
    cmpl %esi, %eax
    jb L2
    jmp L3
fin:
    popl  %ebx
    popl  %ebp 
    ret
