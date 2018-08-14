;; --------------- EX 1.8 ---------------
;; --------------Cubed Roots ------------

(define (square x)
	(* x x))

(define (cube x)
	(* x x x)
)


(define (abs x)
	(if (< x 0) 
		(- x)
		x))	

(define (improve x guess)
	(/ (+ (/ x (square guess)) (* 2 guess))3)	
)

(define (good-enough? x guess last)
	(< (abs (- guess last)) .0000001)
)

(define (cube-iter x guess last)
	(if (good-enough? x guess last)
			guess
			(cube-iter x (improve x guess) guess)
  )
)

(define (cube-rt x)
	(cube-iter x 1.0 0)
)

(cube-rt (cube .02 ))
