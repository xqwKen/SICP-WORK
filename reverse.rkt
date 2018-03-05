#lang scheme
(define (length item)
  (if (null? item)
      0
      (+ 1 (length (cdr item)))))
(define (reverse item)
  (if (= (length item) 2)
      (list (cdr item) (car item))
      (list (reverse (cdr item)) (car item))))