#lang racket
; (sumDigits n) --> integer
;   n: nonnegative integer
;
; Returns the sum of the digits of n
(define sumDigits
  (lambda (n)
    (if (< n 10)
      n
      (+ (remainder n 10)
         (sumDigits (quotient n 10))))))

(display "sumDigits tests\n")
(display "should be 19: ")(sumDigits 4825)
; trace
; (sumDigits 4825)
; (+ 5 (sumDigits 482))
; (+ 5 (+ 2 (sumDigits 48)))
; (+ 5 (+ 2 (+ 8 (sumDigits 4))))
; (+ 5 (+ 2 (+ 8 4)))
; (+ 5 (+ 2 12))
; (+ 5 14)
; 19

; (numDigits n) --> integer
;   n: nonnegative integer
;
; Returns the number of digits in n
(define numDigits
  (lambda (n)
    (if (< n 10)
      1
      (+ 1
         (numDigits (quotient n 10))))))

(display "\nnumDigits tests\n")
(display "should be 4: ")(sumDigits 4825)
; trace
; (numDigits 4825)
; (+ 1 (numDigits 482))
; (+ 1 (+ 1 (numDigits 48)))
; (+ 1 (+ 1 (+ 1 (numDigits 4))))
; (+ 1 (+ 1 (+ 1 1)))
; (+ 1 (+ 1 2))
; (+ 1 3)
; 4


; (fib n) --> integer
;   n: nonnegative integer
;
; Returns the nth digit of the fiboneacci series.
; The first two values are 1
; All subsequent values are the sum of the previuous 2
; i.e. fib(n) = fib(n - 1) +  fib(n - 2)
(define fib
  (lambda (n)
    (if (< n 2)
      1
      (+ (fib (- n 1)) (fib (- n 2))))))
(display "\nfib tests\n")
(display "should be 1: ")(fib 1)
(display "should be 5: ")(fib 4)
; trace
; (fib 4)
; (+ (fib 3)                          (fib 2))
; (+ (+ (fib  2)            (fib 1))  (fib 2))
; (+ (+ (+ (fib 1) (fib 0)) 1)        (fib 2))
; (+ (+ (+ 1        1)      1)        (fib 2))
; (+ (+ 2                   1)        (fib 2))
; (+ 3                                (+ (fib 1) (fib 0)))
; (+ 3                                (+ 1        1))
; (+ 3                                2)
; 5
