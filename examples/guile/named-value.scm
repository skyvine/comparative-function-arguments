(define* (sum #:key (a 3) (b 5))
	(+ a b))

(define (call-it)
	(sum #:a 8 #:b 9))
