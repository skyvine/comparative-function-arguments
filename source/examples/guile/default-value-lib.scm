(define-module (default-value-lib)
	#:export (add-values-default-false add-values-default-zero))

(define* (add-values-default-false #:optional a b)
	(+ (or a 0) (or b 0)))

(define* (add-values-default-zero #:optional (a 0) (b 0))
	(+ a b))
