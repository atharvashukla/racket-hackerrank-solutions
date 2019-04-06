#lang racket

(define (fib result-before result-after nth)
  (cond
    [(<= nth 1) result-before]
    [else   (fib result-after
                 (+ result-before result-after)
                 (- nth 1))]))

(fib 0 1 (read))