.data
.globl adr
adr:
   .int 0,1

.text
.globl fibo_grand

fibo_grand:
movl 4(%esp),%eax           # n : indice de fibo
movl 8(%esp),%edi           # m : base modulo
movl 12(%esp),%esi          # p : periode de pisano de m (pisano(m))

push %ebp
movl %esp,%ebp
push %ebx

movl $adr ,%edx




movl %esi ,%ecx


L1:


 movl (%edx), %eax


 addl 4(%edx),%eax


 movl %eax, 8(%edx)


 addl $4, %edx


 loop L1












movl %esi ,%ecx


movl $adr, %ebx


L2:


 movl $0, %edx


 movl (%ebx), %eax


 divl %edi


 movl %edx, (%ebx)



popl  %ebx
popl  %ebp         
ret



   

