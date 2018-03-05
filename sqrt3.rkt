#lang scheme
(define (guess? x y)
  (< (abs (- (* y (* y y)) x)) 0.001))
(define (new x y)
  (/ (+ (/ x (* y y)) (* 2 y)) 3))
(define (sqrti x y)
  (if (guess? x y)
      y
      (sqrti x
             (new x y))))
(define (sqrt3 x)
  (sqrti x 1.0))