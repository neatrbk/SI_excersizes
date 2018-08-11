;; existing procedures:

(define (abs x)
	(if(< x 0)
		(- x) x))

(define (average x y) 
  (/ (+ x y) 2)
)

(define (improve guess x)
  (average guess (/ x guess))
)

(define (good-enough? guess x)
  (< (abs (-(square guess) x)) 0.0001)
)

(define (square x)
  (* x x)
)

(define (sqrt x)
  (sqrt-iter 1.0 x)
)


;; new if is defined as -->

(define (new-if prediacate then-clause else-clause)
  (cond (prediacate then-clause)
        (else else-clause)
  )
)

;; Alyssa rewrites sqrt-iter as:

;;(define (sqrt-iter guess x)
;;  (new-if (good-enough? guess x)
;;    guess
;;  (sqrt-iter (improve guess x)
;;    x
;;  )
;;  )
;;)

;; ANSWER
;; ------------------------------------------------------------------------
;; The problem with Alyssa's implimentation is to do with applicative order
;; evaluation. That is, because (sqrt-iter (improve guess x) x) is passed
;; to the (new-if) procedure, the sqrt-iter procedure is evaluated. Applicative
;; order evals as so, [operand -->oporator1 -->oporator2 -->operator-n].
;; 
;; Taking this evaluation order in mind after the initial call of sqrt-iter
;; this evaluation takes place :
;;
;; (operator[newIf], operand[good-enough [guess] 1.0], [guess], sqrt-iter...)
;; opon evaluation of the sqrt-iter with the passed params an infinate loop 
;; is triggered. Since these params are evaluated on every pass, even when
;; goodEnough passes, sqrt-iter is evaluated, never ending, into enternity. 
;; -----------------------------------------------------------------------

;; Original procedure 

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
  (sqrt-iter (improve guess x) x)
  )
)

(sqrt 25)
