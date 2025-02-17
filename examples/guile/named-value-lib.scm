(define-module (named-value-lib) #:export (add-values))

(define* (add-values #:key a b)
	(+ a b))

