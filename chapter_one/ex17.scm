(define (abs x) 
  (if (< x 0) (- x) x)
)

(define (average x y)
	(/ (+ x y) 2)
)

(define (improve guess x)
	(average guess (/ x guess))
)

(define (square x)
	(* x x)
)

;; Original procedure 

;;(define (good-enough? guess x)
;;	(< (abs (- (square guess) x))  0.00001))
;;)

(define (good-enough? guess x)
	(= (abs(- (square guess)x)) 0)
)

(define (sqrt x)
	(sqrt-iter 1.0 x)
)

(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
	(sqrt-iter (improve guess x) x)
	)
)

(sqrt .000000000000000000000000000000000000000000000000025)
