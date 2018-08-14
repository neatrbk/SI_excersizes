;; the origanal procedure is inaccurate for very samll numbers because we only
;; have precision to .0001, meaining any thing smaller than .0001 would pass the
;; good-enough? test right away, returning and inaccurate result

;; large numbers would be inaccurate simply because we cannot trust the accracy
;; of arithmic operations to the .00001 degree. Some large numbers will return
;; inaccurate results because of this.

;; the implimentation below looks for shift values in the guesses and based on
;; these values, determines if more guesses are needed.		

---------------------------------------------------------------------------------



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

(define (good-enough? guess last)
  (< (abs(- guess last)) .00001)
)

(define (sqrt x)
	(sqrt-iter 1.0 0 x)
)

(define (sqrt-iter guess last x)
	(if (good-enough? guess last)
		guess
	(sqrt-iter (improve guess x) guess x)
	)
)

(sqrt .0025)

