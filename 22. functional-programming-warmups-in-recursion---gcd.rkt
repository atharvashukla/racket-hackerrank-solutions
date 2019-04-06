#lang racket

(define (gcd x y num)
  (if (and (= 0 (modulo x num) 0)
           (= 0 (modulo y num)))
      num
      (gcd x y (sub1 num))))

(let ([x (read)]
      [y (read)])
  (display (gcd x y (max x y))))