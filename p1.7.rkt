#lang planet neil/sicp
(define (average x y)
  (/ (+ x y) 2))
(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (define (good-enough? guess x)
    (< (abs (- (* guess guess) x)) 0.001))
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt-iter2 guess x)
  (define (good-enough? guess x)
    (= guess (improve guess x)))
  (if (good-enough? guess x)
      guess
      (sqrt-iter2 (improve guess x) x)))

(define (sqrt x) (sqrt-iter 1.0 x))
(define (sqrt2 x) (sqrt-iter2 1.0 x))

(sqrt 4) ;2.000609756097561
(sqrt 2) ;1.4142156862745097
(sqrt 0.01) ;0.10032578510960605
(sqrt 0.0000000001) ;0.03125000106562499
;(sqrt 100000000000000000000000000000000000000000000000000) ;(Infinite Loop)
(sqrt2 4) ;2.0
(sqrt2 2) ;1.414213562373095
(sqrt2 0.01) ;0.1
(sqrt2 0.0000000001) ;9.999999999999999e-006
(sqrt2 100000000000000000000000000000000000000000000000000) ;1e+025