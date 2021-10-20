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
             
###
#votre programme ici
###

pop %ebx
pop %ebp
ret



