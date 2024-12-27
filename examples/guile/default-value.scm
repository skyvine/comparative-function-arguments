(define* (add-values #:optional a b)
	(+ (or a 0) (or b 0)))

(add-values)
(add-values 1000 1001)

(define* (add-values #:optional (a 0) (b 0))
	(+ a b))

(add-values)
(add-values 1002 1003)
