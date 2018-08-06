;;p is defined recursivly to itself
(define (p) (p))

(define (test x y)
  (if (= x 0)
       0
       y))

(test 0 (p))
;; With applicative-order operation the (p) procedure is evaluated
;; because p is recursivly defined to itself and infinate loop is triggered (p) => (p) => (p)


;; With normaltive-order operation the (p) procedure is not evalutated until it's needed

;;if(= 0 0)
;;      0  ==> because 0 = 0 there is no need to evaluate (p) and 0 is returned
;;     (p))
