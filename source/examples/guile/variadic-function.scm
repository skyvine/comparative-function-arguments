; Note: the disassembly for functions with variadic variables lists 2 separate functions
; with the same name. One of them (a "wrapper) will call `apply` with the other (the
; "real" one) as the argument. The wrapper is identifiable because it will have a
; `make-non-immediate` instruction annoted with the function's name (eg, add-values-rest).
; The purpose of the wrapper is not clear to me, but the direct calls to the function at
; the end of this file go straight to the real one so I'm just ignoring it for now.

(define (add-values-dotted a b . variadic-variable)
	(apply + a b variadic-variable))

(define* (add-values-rest a b #:rest variadic-variable)
	(apply + a b variadic-variable))

(define* (add-values-explicit a b variadic-variable)
	(apply + a b variadic-variable))

(add-values-dotted 1 2 3 4)
(add-values-rest 1 2 3 4)
(add-values-rest 1 2)
(add-values-explicit 1 2 '(3 4))
