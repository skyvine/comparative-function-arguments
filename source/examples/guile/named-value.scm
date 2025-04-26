(add-to-load-path (dirname (current-filename)))
(use-modules (named-value-lib))

(add-values #:a 8 #:b 9)
#t
