#lang racket

(define (remove-elem elem lst)
  (cond
    [(empty? lst) lst]
    [else (if (equal? elem (first lst))
              (remove-elem elem (rest lst))
              (cons (first lst) (remove-elem elem (rest lst))))]))

(define (remove-dup-forward lst acc)
  (cond
    [(empty? lst) acc]
    [else (let* ([elem (first lst)]
                 [res (remove-elem elem lst)])
            (remove-dup-forward res (append acc (list elem))))]))

(define (read->charlst r)
  (string->list (symbol->string r)))

(define (charlst->str charlst)
  (apply string-append (map string charlst)))


(printf (charlst->str (remove-dup-forward (read->charlst (read)) '())))