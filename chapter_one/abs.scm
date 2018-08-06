;;(define (abs x)
;;  (if(< x 0) (- x)
;;     x
;;  )
;;)

(define (abs x)
  (cond ((< x 0) (- x))
  (else x)
  )
)

(abs -7)
