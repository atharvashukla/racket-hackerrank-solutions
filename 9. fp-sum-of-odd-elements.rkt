#lang racket

; List of numbers -> Number
; sums all odd numbers in the list
(define (sum-odd lst)
  (foldr + 0 (filter odd? lst)))

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
  (display (sum-odd x)))