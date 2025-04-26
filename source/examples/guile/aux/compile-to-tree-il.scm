(use-modules (ice-9 pretty-print)
             (srfi srfi-1)
             (system base compile)
             (system base language))

(define (get-tree-il port)
	(with-output-to-string
		(lambda ()
			((language-printer (lookup-language 'tree-il))
			 (read-and-compile port #:to 'tree-il)))))

(define (print-tree-il-string str)
	(pretty-print (call-with-input-string str read)))

(print-tree-il-string (call-with-input-file (second (command-line)) get-tree-il))
