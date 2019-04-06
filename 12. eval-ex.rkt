#lang racket




 
(define (fact n [acc 1])
  (if (or (= n 1) (= n 0))
      acc
      (fact (- n 1) (* n acc))))

(define (f x k)
  (/ (expt x k) (fact k)))

(define (compute x)
  (apply + (build-list 10 (λ (k) (f x k)))))

(define (sigdig x)
  (exact->inexact (/ (floor(* 10000 x)) 10000)))

(define (read-list)
  (let ([x (read)]) 
    (cond [(eof-object? x) '()] 
          [else (cons x (read-list))])))

(define (display-list lst)
  (cond
    [(empty? lst) (display "")]
    [else (displayln (first lst)) (display-list (rest lst))]))

(let* ([n (read)]
       [x (read-list)]
       [y (map (compose sigdig compute) x)])
  (display-list y))