Dump of assembler code for function main:
   0x0000000000401112 <+0>:	push   %rbp
   0x0000000000401113 <+1>:	mov    %rsp,%rbp
   0x0000000000401116 <+4>:	mov    $0x772,%edi
   0x000000000040111b <+9>:	call   0x401106 <helper>
   0x0000000000401120 <+14>:	pop    %rbp
   0x0000000000401121 <+15>:	ret    
End of assembler dump.
Dump of assembler code for function helper:
   0x0000000000401106 <+0>:	push   %rbp
   0x0000000000401107 <+1>:	mov    %rsp,%rbp
   0x000000000040110a <+4>:	mov    %edi,-0x4(%rbp)
   0x000000000040110d <+7>:	mov    -0x4(%rbp),%eax
   0x0000000000401110 <+10>:	pop    %rbp
   0x0000000000401111 <+11>:	ret    
End of assembler dump.
