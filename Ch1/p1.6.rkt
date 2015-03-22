#lang planet neil/sicp
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5) ;5
(new-if (= 1 1) 0 5) ;0

(define (sqrt-iter guess x)
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (average x y)
    (/ (+ x y) 2))
  (define (good-enough? guess x)
    (< (abs (- (* guess guess) x)) 0.001))
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(sqrt-iter 1.0 9) ;(Infinite Loop)

#|
speical form이 아니라면 applicative order에 따라 선택되지 않을 clause도 계산해야하기 때문에 문제가 된다.
|#