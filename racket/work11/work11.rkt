#lang racket

(define fizzbuzz
  (lambda (n)
    (if (= 0 (remainder n 15))
        15
        (if (= 0 (remainder n 3))
            3
            (if (= 0 (remainder n 5))
                5
                -1)))))
(display "fizzbuzz tests\n")
(display "should be 15: ")
(fizzbuzz 45)
(display "should be 3: ")
(fizzbuzz 12)
(display "should be 5: ")
(fizzbuzz 20)
(display "should be -1: ")
(fizzbuzz 13)


; (isMultiple n m) --> boolean
;  n: integer
;  m: integer
;
; Returns #T if n is a multiple of m
; and #F otherwise
(define isMultiple
  (lambda (n m)
    (= 0 (remainder n m))))
(display "\nisMultiple tests\n")
(display "should be #t: ")
(isMultiple 12 4)
(display "should be #f: ")
(isMultiple 12 5)

; (squareArea s) --> number
;  s: positive number
;
; Returns the area of a square with side lenght s
(define squareArea
  (lambda (s)
    (* s s)))
(display "\nsquareArea tests\n")
(display "should be 81: ")
(squareArea 9)

; (circleArea r) --> number
;  r: positive number
;
; Returns the area of a circle with radius r
(define circleArea
  (lambda (r)
    (* pi r r)))
(display "\ncircleArea tests\n")
(display "should be 314.15926...: ")
(circleArea 10)

; (shapeArea type size) --> number
;  type: positive integer
;  size: positive number
;
; If type is even, returns the area of a
; square with side length size.
; If type is odd, returns the area of a
; circle with radius size
(define shapeArea
  (lambda (type size)
    (if (= 0 (remainder type 2))
        (squareArea size)
        (circleArea size))))
(display "\nshapeArea tests\n")
(display "should be 314.15926...: ")
(shapeArea 1 10)
(display "should be 100: ")
(shapeArea 2 10)
