(define (<= a b)
  (not(> a b))
)

(define (sumSq a b c)
  (cond ((and (<= c a)(<= c b))(+ (* a a)(* b b)))
        ((and (<= b a)(<= b c))(+ (* a a)(* c c)))
        (else (+ (* b b)(* c c)))
))

(sumSq 4 3 3)
