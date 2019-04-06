#lang racket

;; Integer x Integer -> List
;; list-replication: replicates x,
;; s times per element
(define (list-replication s x)
  (cond
    [(empty? x) (display "")]
    [else (replicate s (first x)) (list-replication s (rest x))]))

;; Integer x Integer -> List
;; replicate: repeat x , s times
(define (replicate s x)
  (cond
    [(= 0 s) (display "")]
    [else (cons (displayln x) (replicate (- s 1) x))]))

(define (read-list)
  (let ([x (read)]) 
    (cond [(eof-object? x) (list)]
          [else (cons x (read-list))])))

; eof-object? determines whether some value is the end-of-file value.

 (let ([x (read-list)])
   (list-replication (first x) (rest x)))

