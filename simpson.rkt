#lang scheme
(define (cube x)
  (* x x x))
(define (sum term k next n)
  (if (> k n)
      0
      (+ (term k)
         (sum term (next k) next n))))
(define (y k)
  (cube (* k (/ (/ 1 1000) 3))))
(define (even? k)
  (if (remainder k 2)
      (* 4 y)
      (*2 y)))