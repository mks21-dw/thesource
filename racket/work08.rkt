#lang racket

;(isEven n) --> boolean
;  n : integer
;
; Returns true or false based on if n is even or not
; (isEven 45) --> #f
; (isEvent 8) --> #t
(define isEven
  (lambda (n)
    (= 0 (remainder n 2))))
(display "isEven tests:\n")
(display "#f: ")
(isEven 45)
(display "#t: ")
(isEven 8)

;(isMultiple n m) --> boolean
;  n --> integer
;  m --> integer
;
;  Returns true if n is a multiple of m
;  false otherwise
;  (isMultiple 21 7) --> #t
;  (isMultiple 34 4) --> #f
(define isMultiple
  (lambda (n m)
    (= 0 (remainder n m))))
(display "isMultiple tests:\n")
(display "#t: ")
(isMultiple 21 7)
(display "#f: ")
(isMultiple 34 4)

;(twoDigits n) --> boolean
;  n --> integer
;
;  Returns true if n is a two digit integer,
;  false otherwise
;  (twoDigits 51) --> #t
;  (twoDigits 2) --> #f
;  (twoDigits 1234) --> #f
(define twoDigits
  (lambda (n)
    (and
     (= 0 (quotient n 100))
     (< 0 (quotient n 10)))))
(display "twoDigits tests:\n")
(display "#t: ")
(twoDigits 51)
(display "#f: ")
(twoDigits 2)
(display "#f: ")
(twoDigits 1234)

;(xDigits n x) --> boolean
;  n --> integer
;  x --> integer
;  Returns true if n is an x digit integer,
;  false otherwise
;  (xDigits 32 1) --> #f
;  (xDigits 3 1) --> #t
;  (xDigits 1234 4) --> #t
(define xDigits
  (lambda (n x)
    (and
     (= 0 (quotient n (expt 10 x)))
     (< 0 (quotient n (expt 10 (- x 1)))))))


(display "xDigits tests:\n")
(display "#f: ")
(xDigits 32 1)
(display "#t: ")
(xDigits 3 1)
(display "#t: ")
(xDigits 1234 4)

;Alternate, arguably simpler, versions
;of twoDigits and xDigits
(define twoDigits2
  (lambda (n)
    (and
     (< n 100))
     (>= n 10)))

(define xDigits2
  (lambda (n x)
    (and
     (< n (expt 10 x))
     (>= n (expt 10 (- x 1))))))

