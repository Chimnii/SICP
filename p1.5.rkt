#lang planet neil/sicp
(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))

(if #t 0 (p)) ;0
(test 0 (p)) ;(Infinite Loop)

#|
Applicative Order: test식을 펼치기 전에 (p)를 계산해야 하므로 무한루프
Normal Order: test식을 펼치고 if식을 펼칠 때 0만 계산되므로 0
|#