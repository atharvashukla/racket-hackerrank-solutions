#lang racket

;; List of numbers -> ...
;; displays every number on a new line
(define (display-list lst)
  (cond
    [(empty? lst) (display "")]
    [else (displayln (first lst)) (display-list (rest lst))]))

; reading numbers and constructing a list
(define (read-list)
  (let ([x (read)]) 
    (cond [(eof-object? x) (list)]
          [else (cons x (read-list))])))

; calling the function with the list
(let ([x (read-list)])
  (display-list (reverse x)))