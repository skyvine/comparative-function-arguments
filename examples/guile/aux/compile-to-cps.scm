(use-modules (srfi srfi-1) (srfi srfi-26) (system base compile) (system base language))

((language-printer (lookup-language 'cps))
 (call-with-input-file (second (command-line)) (cute read-and-compile <> #:to 'cps)))
