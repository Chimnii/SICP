#lang planet neil/sicp
(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
(define (cbrt-iter guess x)
  (define (good-enough? guess x)
    (= guess (improve guess x)))
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x) x)))
(define (cbrt x)
  (cbrt-iter 1.0 x))

(cbrt 8) ;2.0
(cbrt -8) ;-2.0
(cbrt 1000) ;10.0
(cbrt 0.001) ;0.09999999999999999
