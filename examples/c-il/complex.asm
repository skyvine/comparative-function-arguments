Dump of assembler code for function main:
   0x0000000000401125 <+0>:	push   %rbp
   0x0000000000401126 <+1>:	mov    %rsp,%rbp
   0x0000000000401129 <+4>:	mov    0xee0(%rip),%rax        # 0x402010
   0x0000000000401130 <+11>:	movss  0xee0(%rip),%xmm1        # 0x402018
   0x0000000000401138 <+19>:	movq   %rax,%xmm0
   0x000000000040113d <+24>:	mov    $0x73,%edx
   0x0000000000401142 <+29>:	mov    $0x402008,%esi
   0x0000000000401147 <+34>:	mov    $0x772,%edi
   0x000000000040114c <+39>:	call   0x401106 <helper>
   0x0000000000401151 <+44>:	pop    %rbp
   0x0000000000401152 <+45>:	ret    
End of assembler dump.
Dump of assembler code for function helper:
   0x0000000000401106 <+0>:	push   %rbp
   0x0000000000401107 <+1>:	mov    %rsp,%rbp
   0x000000000040110a <+4>:	mov    %edi,-0x4(%rbp)
   0x000000000040110d <+7>:	mov    %rsi,-0x10(%rbp)
   0x0000000000401111 <+11>:	mov    %edx,%eax
   0x0000000000401113 <+13>:	movsd  %xmm0,-0x18(%rbp)
   0x0000000000401118 <+18>:	movss  %xmm1,-0x1c(%rbp)
   0x000000000040111d <+23>:	mov    %al,-0x8(%rbp)
   0x0000000000401120 <+26>:	mov    -0x4(%rbp),%eax
   0x0000000000401123 <+29>:	pop    %rbp
   0x0000000000401124 <+30>:	ret    
End of assembler dump.
