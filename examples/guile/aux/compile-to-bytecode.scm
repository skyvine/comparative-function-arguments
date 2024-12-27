(use-modules (srfi srfi-1) (system base compile) (system vm disassembler))

(define input-file-name (second (command-line)))

(let ((compiled-file
      	(compile-file
      		input-file-name
      		#:opts '(#:partial-eval? #f)
      		)))
	(disassemble-file compiled-file))
