.data
.globl adr_fibo_mod_m
adr_fibo_mod_m:
   .int 0,1

.text
.globl fibo_mod_m_div

fibo_mod_m_div:
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
L2:
   movl $0, %edx
   movl (%ebx), %eax
   divl %esi
   movl %edx, (%ebx)
   addl $4, %ebx
   loop L2


popl  %ebx
popl  %ebp                    
ret



   

