#lang racket

(define (mingle lst1 lst2)
  (cond
    [(empty? lst1) '()]
    [else (cons (first lst1) (cons (first lst2) (mingle (rest lst1) (rest lst2))))]))

(define (read->charlst r)
  (string->list r))

(define (charlst->str charlst)
  (apply string-append (map string charlst)))



(let* ([x (read-line)]
       [y (read-line)])
  (printf (charlst->str (mingle (read->charlst x)
                                 (read->charlst y)))))