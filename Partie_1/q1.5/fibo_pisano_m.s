.data




.globl adr_pisano


adr_pisano:


  .int 0,1







 


.text


.globl fibo_pisano_m







fibo_pisano_m:
movl 4(%esp), %edi           # n : indice de fibo
movl 8(%esp), %esi           # m : base modulo

push %ebp
movl %esp, %ebp
push %ebx     
movl $adr_pisano, %edx
movl %edi ,%ecx


L1:
 movl (%edx), %eax
 addl 4(%edx),%eax
 movl %eax, 8(%edx)
 addl $4, %edx
 loop L1
movl %edi ,%ecx
movl $adr_pisano, %ebx


L2:
 movl $0, %edx
 movl (%ebx), %eax
 divl %esi
 movl %edx, (%ebx)
 addl $4, %ebx
 loop L2


movl %edi ,%ecx
movl $adr_pisano, %ebx
movl $0, %eax
addl $16, %ebx


L3:
 cmpl $0, (%ebx)  #par certaind e cette ligne
 je L4
 addl $1, %eax
 addl $4, %edx
 jmp L3

L4: 
 addl $4, %edx
 cmpl $1, (%edx)
 je fin
 jmp L3

fin:
 popl  %ebx
 popl  %ebp        
 ret


