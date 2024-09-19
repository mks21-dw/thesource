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
;test cases
(display "expected 7: ")
(getOnesDigit 7)
(display "expected 2: ")
(getOnesDigit 4132)

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
;test cases
(display "expected 0: ")
(removeOnesDigit 7)
(display "expected 413: ")
(removeOnesDigit 4132)

;(getTensDigit n) --> integer
;  n : non negative integer
;
;  Returns the tens digit of n
;  if n < 10, return 0.
;  (getOnesDigit 7) --> 0
;  (getOnesDigit 4132) --> 3
(define getTensDigit
  (lambda (n)
    (remainder (quotient n 10) 10)))
;test cases
(display "expected 0: ")
(getTensDigit 7)
(display "exptected 3: ")
(getTensDigit 4132)

;(getNthDigit n) --> integer
;  n : non negative integer
;
;  Returns the digit at position n, where
;  thes ones digit is potion 1, the tens is
;  position 2 and so on.
;  (getNthDigit 7 1) --> 7
;  (getNthDigit 4132 2) --> 3
;  (getNthDigit 4132 3)--> 1
(define getNthDigit
  (lambda (n digit)
    (remainder
     (quotient n
               (expt 10 (- digit 1)))
     10)))
;test cases
(display "expected 7: ")
(getNthDigit 7 1)
(display "expected 3: ")
(getNthDigit 4132 2)
(display "expected 1: ")
(getNthDigit 4132 3)
