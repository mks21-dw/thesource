#lang racket

;(getOnesDigit n) --> integer
;  n : non negative integer
;
;  Returns the ones digit of n
;  (getOnesDigit 7) --> 7
;  (getOnesDigit 4132) --> 2
(define getOnesDigit
  (lambda (n)
    (remainder n 10)))

;(removeOnesDigit n) --> integer
;  n : non negative integer
;
;  Returns n with the ones digit removed and all other digits shifted to the right.
;  If the argument given is a one digit number, returns `0`.
;  (removeOnesDigit 7) --> 0
;  (removeOnesDigit 4132) --> 413
(define removeOnesDigit
  (lambda (n)
    (quotient n 10)))



(define getTensDigit
  (lambda (n)
    (remainder (quotient n 10) 10)))



(define getNthDigit
  (lambda (n digit)
    (remainder
     (quotient n
               (expt 10 (- digit 1)))
     10)))
