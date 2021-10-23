.data
.globl adr_fibo
adr_fibo:
   .int 0,1

.text
.globl fibo

fibo:
movl 4(%esp),%edi           #Valeur de n

push %ebp
movl %esp,%ebp
push %ebx      
             
movl $adr_fibo,%edx
movl %edi ,%ecx
L1:
   movl (%edx), %eax
   addl 4(%edx),%eax
   movl %eax, 8(%edx)
   addl $4, %edx
   loop L1


pop %ebx
pop %ebp
ret



