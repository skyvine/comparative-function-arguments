(use-modules (ice-9 optargs))

(define* (all-positional-mandatory one two three)
  (if one two three))

(define (call-it)
  (all-positional-mandatory "oNE" "tWO" "tHREE"))

(define* (different-kinds-of-arguments positional
                                       #:optional (default "Default")
                                       #:key      (named   "Named"))
  (if positional default named))

(define (provide-all-values)
  (different-kinds-of-arguments "pOSITIONAL" "dEFAULT" #:named "nAMED"))

(define (provide-only-required-value)
  (different-kinds-of-arguments "pOSITIONAL"))
