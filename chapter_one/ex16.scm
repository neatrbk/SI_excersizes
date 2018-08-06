;; existing functions

(define ()

)


;; new if is defined as -->

(define (new-if prediacate then-clause else-clause)
  (cond (prediacate then-clause)
        (else else-clause)
  )
)

;; Alyssa rewrites sqrt-iter as:

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
    guess
  (sqrt-iter (improve guess x)
    x
  )
  )
)


