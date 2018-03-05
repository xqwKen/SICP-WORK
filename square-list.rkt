#lang scheme
(define (f x)
  (* x x))
(define (sql item)
  (if (null? item)
      null
      (cons (f (car item))
            (sql (cdr item)))))