#!r6rs

(import(rnrs))

(define (abs x) 
(if(x > 0) x (- x)))

(display (procedure? abs))