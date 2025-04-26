(add-to-load-path (dirname (current-filename)))
(use-modules (default-value-lib))

(add-values-default-false)
(add-values-default-false 1000 1001)

(add-values-default-zero)
(add-values-default-zero 1002 1003)

#t
