#lang racket
(define (exp a n)
  (define (iter a b n)
    (if (= n 0)
        b
        (iter a (* a b) (- n 1))))
  (iter a 1 n))
