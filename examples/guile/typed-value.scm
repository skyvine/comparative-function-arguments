(use-modules (oop goops))

(define-method (add-values (a <number>) (b <number>))
  (+ a b))

(define-method (add-values (a <string>) (b <string>))
  (string-append a b))

(define-method (add-values a b)
  (error (format #f "Unknown types for a (~s) and b (~s)." (class-of a) (class-of b))))

(add-values 1000 1001)
