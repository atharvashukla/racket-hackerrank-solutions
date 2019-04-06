#lang racket


(define append*
  (lambda (lists)
    (if (null? lists) lists (append (car lists) (append* (cdr lists))))))

(define diff
  (lambda (x y)
    (abs (- x y))))

(define threaten?
  (lambda (x y n)
    (or (= 0 n) (or (= n (diff x y)) (or (knight-threaten? x y n) (= x y))))))

(define knight-threaten?
  (lambda (x y n)
    (or (and (= n 2) (= 1 (diff x y)))
        (and (= n 1) (= 2 (diff x y))))))

(define safe?
  (lambda (col n cols)
    (or (null? cols)
        (and (not (threaten? col (car cols) n))
             (safe? col (add1 n) (cdr cols))))))

(define configurations
  (lambda (n cols)
    (if (zero? n)
        (cons null null)
        (append* (map (lambda (lst)
                        (map (λ (y) (cons y lst))
                             (filter (λ (x) (safe? x 1 lst))
                                     cols)))
                      (configurations (sub1 n) cols))))))

(define range2
  (lambda (from to)
    (if (= from to)
        null
        (cons from (range2 (add1 from) to)))))

(define queens
  (lambda (size)
    (length (configurations size (range2 0 size)))))

(let ([x (read)])
 (queens x))