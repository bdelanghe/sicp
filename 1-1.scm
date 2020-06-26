#|Exersise 1.6|#

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))

(new-if (= 2 3) 0 5) ;5

(new-if (= 1 1) 0 5) ;0

(define (sqr-iter guess x)
    (new-if (good-enough? guess x)
            guess
            (sqr-iter (improve guess x)
                      x)))

(define (improve guess x))

(sqr-iter 3 2)

#| *BOOKMARK* ;ignore what is below

#|Exersise 1.5|#

(define (p) (p)) ; p is a func that calls itself

(define (test x y)
    ;test will break only if nomal-order
    (if (= x 0)
        0
        y))

; (test 0 (p)) <- this would loop forever before test is ran
(test 0 p) ; this is fine

(define (test2 x y)
    ;test will break only if nomal-order
    (if (= x 0)
        0
        (y))) ;this is never called

(test2 0 p) ; this will also be ok

#|Exersise 1.4|#

(define (a-plus-abs-b a b)
    ; change the operation to minus if b is negative
    ((if (> b 0) + -) a b))

#|Exersise 1.3|#

(define (sum-of-two-largest-sqr x y z) 
    (apply + (apply sqr_two (two_largest x y z))))

(define (two-largest x y z)
    (cond ((and (>= x z) (>= y z)) (list x y))
          ((and (>= x y) (>= z y)) (list x z))
          (else (list y z)))
)

(define (sqr-two x y) (list (* x x) (* y y)))

(sum-of-two-largest-sqr 1 2 3)

#|Exersise 1.2|#

(/  (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
    (* 3 (- 6 2) (- 2 7)))

#|Exersise 1.1|#

10 ;10

(+ 5 3 4) ;12

(- 9 1) ;8

(/ 6 2) ;3

(+ (* 2 4) (- 4 6)) ;6

(define a 3) ;None

(define b (+ a 1)) ;None

(+ a b (* a b)) ;19

(= a b) ;#f

(if (and (> b a) (< b (* a b)))
    b
    a) ;4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)) ;16

(+ 2 (if (> b a) b a)) ;6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1)) ;16