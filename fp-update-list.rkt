#lang racket

(define (f lst)
  (map abs lst))

(define (read-list)
  (let ([x (read)]) 
    (if (eof-object? x)
      (list)
      (cons x (read-list)))))

(let ([lst (read-list)]) 
  (let ([ans (f lst)])
    (for ([x ans])
         (printf "~a\n" x))))
