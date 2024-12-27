(define script-location (dirname (current-filename)))
(load-extension (string-append script-location "/c-gsubr-rest") "init")

(uut 0 1 2 3 4)
(uut 0 1 2 '(3 4))
(uut 0 1 2)
;; Results:
;; (1 2 3 . 4)
;; (1 2 3 4)
;; (1 . 2)

(define* (uut arg0 arg1 #:rest args)
	(format #t "~s~%" (cons* arg1 args)))

(uut 0 1 2 3 4)
(uut 0 1 2 '(3 4))
(uut 0 1 2)
;; Results:
;; (1 2 3 4)
;; (1 2 (3 4))
;; (1 2)
