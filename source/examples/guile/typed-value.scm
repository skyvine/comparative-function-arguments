(use-modules (oop goops))

(define-method (add-values (a <number>) (b <number>))
  (+ a b))

(define-method (add-values (a <string>) (b <string>))
  (string-append a b))

(add-values 1000 1001)
