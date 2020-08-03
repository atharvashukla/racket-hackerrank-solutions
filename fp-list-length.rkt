#lang racket

; List of numbers -> Number
; how many elements are in the list?
(define (list-length lst)
  (cond
    [(empty? lst) 0]
    [else (+ 1 (list-length (rest lst)))]))

;; Number List of Numbers -> List of Numbers
;; removes all numbers that are less than x from the list
(define (filter-array x lon)
  (filter (lambda (i) (< i x)) lon))

; reading numbers and constructing a list
(define (read-list)
  (let ([x (read)]) 
    (cond [(eof-object? x) (list)]
          [else (cons x (read-list))])))

; calling the function with the list
(let ([x (read-list)])
  (display (list-length x)))