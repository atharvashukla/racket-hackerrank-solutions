#lang racket

(define (hello-world-n n)
  (cond
    [(= 0 n) (display "")]
    [else (displayln "Hello World") (hello-world-n (- n 1))]))

(let ([n (read)])
  (hello-world-n n))