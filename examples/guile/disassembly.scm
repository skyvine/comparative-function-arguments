Disassembly of #<procedure all-positional-mandatory (one two three)> at #x7fe3e0efc20c:

   0    (instrument-entry 16391)                              at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:3:0
   2    (assert-nargs-ee/locals 4 0)    ;; 4 slots (3 args)
   3    (immediate-tag=? 2 3839 4)      ;; false?             at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:4:2
   5    (je 5)                          ;; -> L1
   6    (mov 3 1)                       
   7    (reset-frame 1)                 ;; 1 slot
   8    (handle-interrupts)             
   9    (return-values)                 
L1:
  10    (mov 3 0)                       
  11    (reset-frame 1)                 ;; 1 slot
  12    (handle-interrupts)             
  13    (return-values)                 

Disassembly of #<procedure call-it ()> at #x7fe3e0efc244:

   0    (instrument-entry 16409)                              at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:6:0
   2    (assert-nargs-ee/locals 1 3)    ;; 4 slots (0 args)
   3    (static-ref 3 16380)            ;; #f                 at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:7:3
   5    (immediate-tag=? 3 7 0)         ;; heap-object?
   7    (je 9)                          ;; -> L1
   8    (static-ref 3 16301)            ;; #<directory (guile-user) 7fe3e145ec80>
  10    (static-ref 2 16293)            ;; all-positional-mandatory
  12    (call-scm<-scm-scm 3 3 2 111)   ;; lookup-bound
  14    (static-set! 3 16369)           ;; #f
L1:
  16    (scm-ref/immediate 3 3 1)       
  17    (make-non-immediate 2 16368)    ;; "oNE"              at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:7:28
  19    (make-non-immediate 1 16374)    ;; "tWO"              at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:7:34
  21    (make-non-immediate 0 16380)    ;; "tHREE"            at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:7:40
  23    (handle-interrupts)                                   at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:7:2
  24    (tail-call)                     


Disassembly of #<procedure different-kinds-of-arguments (positional #:optional default #:key named)> at #x7fe3e0efc2a8:

   0    (instrument-entry 16426)                              at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:9:0
   2    (assert-nargs-ge 2)             
   3    (bind-kwargs 2 0 3 4 16403)     
   7    (alloc-frame 4)                 ;; 4 slots
   8    (immediate-tag=? 1 4095 2308)   ;; undefined?         at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:10:59
  10    (jne 3)                         ;; -> L1
  11    (make-non-immediate 1 16399)    ;; "Default"
L1:
  13    (immediate-tag=? 0 4095 2308)   ;; undefined?         at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:11:59
  15    (jne 3)                         ;; -> L2
  16    (make-non-immediate 0 16402)    ;; "Named"
L2:
  18    (immediate-tag=? 2 3839 4)      ;; false?             at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:12:2
  20    (je 5)                          ;; -> L3
  21    (mov 3 1)                       
  22    (reset-frame 1)                 ;; 1 slot
  23    (handle-interrupts)             
  24    (return-values)                 
L3:
  25    (mov 3 0)                       
  26    (reset-frame 1)                 ;; 1 slot
  27    (handle-interrupts)             
  28    (return-values)                 

Disassembly of #<procedure provide-all-values ()> at #x7fe3e0efc31c:

   0    (instrument-entry 16429)                              at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:14:0
   2    (assert-nargs-ee/locals 1 4)    ;; 5 slots (0 args)
   3    (static-ref 4 16400)            ;; #f                 at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:15:3
   5    (immediate-tag=? 4 7 0)         ;; heap-object?
   7    (je 9)                          ;; -> L1
   8    (static-ref 4 16277)            ;; #<directory (guile-user) 7fe3e145ec80>
  10    (static-ref 3 16269)            ;; different-kinds-of-arguments
  12    (call-scm<-scm-scm 4 4 3 111)   ;; lookup-bound
  14    (static-set! 4 16389)           ;; #f
L1:
  16    (scm-ref/immediate 4 4 1)       
  17    (make-non-immediate 3 16388)    ;; "pOSITIONAL"       at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:15:32
  19    (make-non-immediate 2 16394)    ;; "dEFAULT"          at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:15:45
  21    (static-ref 1 16350)            ;; #:named            at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:15:55
  23    (make-non-immediate 0 16398)    ;; "nAMED"            at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:15:63
  25    (handle-interrupts)                                   at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:15:2
  26    (tail-call)                     

Disassembly of #<procedure provide-only-required-value ()> at #x7fe3e0efc388:

   0    (instrument-entry 16410)                              at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:17:0
   2    (assert-nargs-ee/locals 1 1)    ;; 2 slots (0 args)
   3    (static-ref 1 16405)            ;; #f                 at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:18:3
   5    (immediate-tag=? 1 7 0)         ;; heap-object?
   7    (je 9)                          ;; -> L1
   8    (static-ref 1 16266)            ;; #<directory (guile-user) 7fe3e145ec80>
  10    (static-ref 0 16242)            ;; different-kinds-of-arguments
  12    (call-scm<-scm-scm 1 1 0 111)   ;; lookup-bound
  14    (static-set! 1 16394)           ;; #f
L1:
  16    (scm-ref/immediate 1 1 1)       
  17    (make-non-immediate 0 16361)    ;; "pOSITIONAL"       at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:18:32
  19    (handle-interrupts)                                   at /home/user/backed-up/Projects/repl-user-interface/sandbox/guile/example.scm:18:2
  20    (tail-call)                     
