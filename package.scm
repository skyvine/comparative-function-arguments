(use-modules
	(guix build-system trivial)
	(guix gexp)
	(guix packages)

	((guix licenses) #:prefix license.)

	(gnu packages base)
	(gnu packages graphviz)
	)

(package
	(name "comparative-function-arguments")
	(version "0.3")
	(source (local-file "source" #:recursive? #t))
	(description "A paper describing function interfaces.")
	(synopsis "This paper is in 3 parts. The first part surveys the current ways that
different programming languages process function arguments at both the author and caller
sites. The second part compares and contrasts the languages with an emphasis on finding
the best of all worlds when possible and generalizations which can be specialized in
specific contexts when not. The third and final part presents a framework which increases
expressive power for both callers and authors.")
	(home-page "https://git.sr.ht/~skyvine/comparative-function-arguments")
	(license (list license.cc-by-sa4.0 license.agpl3+ license.eupl1.2))

	(build-system trivial-build-system)
	(arguments (list
		#:modules '((guix build utils))
		#:builder #~(begin
		            	(use-modules (guix build utils) (ice-9 regex) (ice-9 textual-ports))

		            	; Set up the stage
		            	(define source "/dev/shm/source")
		            	(copy-recursively (assoc-ref %build-inputs "source") source)
		            	(system* "chmod" "-R" "+w" source)

		            	(define output %output)
		            	(mkdir-p output)

		            	; graphviz uses fontconfig which wants a writable home directory to use
		            	; for caching... probably not helpful in this situation since the
		            	; cache isn't actually getting saved, but it's reported as an error and
		            	; I don't know if that stops it from doing other things that are
		            	; helpful.
		            	(mkdir "/dev/shm/home")
		            	(setenv "HOME" "/dev/shm/home")

		            	(setenv "PATH"(string-append  #$(file-append gnu-make  "/bin") ":"
		            	                              #$(file-append coreutils "/bin") ":"
		            	                              #$(file-append graphviz  "/bin") ":"
		            	                              #$(file-append sed       "/bin")))

		            	; build the SVG files from the graphviz source
		            	(chdir (string-append source "/images"))
		            	(system* "make" "all")
		            	(chdir output)

		            	; For each line matching this regex, substitute the contents of the
		            	; corresponding file relative to the source directory.
		            	(define include-regex "(\t*)!!INCLUDE ([a-zA-Z0-9./-]*)!!")

		            	(define (file-contains regex filename)
		            		(string-match regex (call-with-input-file filename get-string-all)))

		            	; This adds additional indentation to every line in the file based on
		            	; the "indentation" parameter, which will be set to the amount of
		            	; indentation that the include-regex found.
		            	(define (slurp-file/indented filename indentation)
		            		(define* (loop port #:optional (result ""))
		            			(define next (get-line port))
		            			(if (eof-object? next)
		            				result
		            				(loop port (string-append result indentation next "\n"))))
		            		(call-with-input-file filename loop))

		            	(define (process-includes filename)
		            		(substitute* filename
		            			((include-regex _ indentation filename)
		            				(slurp-file/indented (string-append source "/" filename)
		            				                     indentation)))

		            		(when (file-contains include-regex filename)
		            			(process-includes filename)))

		            	(define out-file 
		            		(string-append output "/comparative-function-arguments.html"))

		            	(copy-file (string-append source "/prose/main.html") out-file)
		            	(process-includes out-file)))))
