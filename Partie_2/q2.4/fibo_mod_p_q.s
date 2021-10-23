.text
.globl fibo_mod_p_q

fibo_mod_p_q:
movl 4(%esp),%edi           # p
movl 8(%esp),%esi           # q

push %ebp
movl %esp,%ebp
push %ebx      
movl $0, %eax    
movl %esi, %%ecx
L1:
 addl %edi, %eax

popl  %ebx
popl  %ebp   
ret
