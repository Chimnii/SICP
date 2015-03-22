#lang planet neil/sicp
(define (f a b c)
  (if (> a b)
      (+ (* a a) (if (> b c) (* b b) (* c c)))
      (+ (* b b) (if (> a c) (* a a) (* c c)))))

(f 1 2 3) ;13
(f 1 3 2) ;13
(f 2 1 3) ;13
(f 2 3 1) ;13
(f 3 1 2) ;13
(f 3 2 1) ;13
