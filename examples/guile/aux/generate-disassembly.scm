(load "example.scm")

(use-modules (system vm disassembler))

(disassemble-program all-positional-mandatory)
(newline)
(disassemble-program call-it)
(newline)
(newline)
(disassemble-program different-kinds-of-arguments)
(newline)
(disassemble-program provide-all-values)
(newline)
(disassemble-program provide-only-required-value)
